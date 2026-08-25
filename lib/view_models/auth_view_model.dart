import 'dart:convert';
import 'dart:io';
import 'package:bayitouser/pages/sign_in_page.dart';
import 'package:bayitouser/pages/splash_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:image/image.dart' as img;

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/api_provider.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';

import '../components/custom_network_image.dart';
import '../components/error_text_component.dart';
import '../models/request_model/auth_request_model.dart';
import '../models/response_model/auth_response_model.dart';
import '../models/response_model/home_response_model.dart';
import '../pages/main_page.dart';
import '../pages/regsiter_user_page.dart';
import '../pages/update_version_screen.dart';
import '../pages/user_blocked.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_color.dart';
import '../utils/geo_util.dart';
import '../utils/preference_manager.dart';
import 'package:http/http.dart' as http;
import 'dart:typed_data';

import 'home_view_model.dart';

class AuthViewModel extends GetxController {
  final apiProvider = Get.put(ApiProvider());

  final validaVersionObserver = ApiResult<ValidateVersionResponseModel>.init().obs;
  final sendOtpResponseObserver = ApiResult<PrimaryResponseModel>.init().obs;
  final emailVerificationObserver = ApiResult<PrimaryResponseModel>.init().obs;
  final swapUserResponseObserver = ApiResult<VerifyOtpResponseModel>.init().obs;
  final contactDetailsResponseObserver = ApiResult<ContactDetailsResponseModel>.init().obs;
  final verifyOtpResponseObserver = ApiResult<VerifyOtpResponseModel>.init().obs;
  final registerUserResponseObserver = ApiResult<PrimaryResponseModel>.init().obs;
  final fetchUserDetailsObserver = ApiResult<FetchUserDetailsResponseModel>.init().obs;
  final fetchSubscriptionDetailsObserver = ApiResult<FetchSubscriptionsResponseModel>.init().obs;

  RxList<String> unitTypeDropList = <String>[].obs;
  RxList<String> filterLocations = <String>[].obs;

  final preferenceManager = Get.put(PreferenceManager());
  RxString profilePic = "".obs;
  RxString selectedTab = "Homes".obs;

  final uploadFileObserver = ApiResult<UploadFileResponseModel>.init().obs;

  Rx<File> uploadingFile = File('').obs;
  RxString aadharImage = "".obs;
  RxString uploadedImage = "".obs;

  Rx<ReferralModel> referralData = const ReferralModel(referralAmount: 30, referralCount: 3).obs;

  RxString userId = "".obs;

  Rx<Position?> locationPosition = Rx<Position?>(null);
  Rx<LocationModel?> locationDetails = Rx<LocationModel?>(null);

  RxBool userAuthenticated = false.obs;

  //host
  Rx<String> primaryHomeId = "".obs;
  RxList<ImageDataModel> images = <ImageDataModel>[].obs;

  String? getPrimaryId() {
    return fetchUserDetailsObserver.value.maybeWhen(
        success: (data) => (data as FetchUserDetailsResponseModel).data?.primaryHome?.id ?? "",
        orElse: () => "");
  }

  bool? dealingAsUserStatus() {
    return fetchUserDetailsObserver.value.maybeWhen(
        success: (data) =>
            (data as FetchUserDetailsResponseModel)
                    .data
                    ?.userDetails
                    ?.dealingType ==
                "user" ??
            true,
        orElse: () => true);
  }

  RxList<DocumentDataModel> kysDocuments = [
    DocumentDataModel(
      documentType: "aadhar",
      documentStatus: "pending",
      uploadedUrl: "",
      errorTxt: '',
    ),
    DocumentDataModel(
      documentType: "pan",
      documentStatus: "pending",
      uploadedUrl: "",
      errorTxt: '',
    ),
    DocumentDataModel(
      documentType: "selfie",
      documentStatus: "pending",
      uploadedUrl: "",
      errorTxt: '',
    )
  ].obs;

  List<DocumentDataModel> initialKycDocuments = [
    DocumentDataModel(
      documentType: "aadhar",
      documentStatus: "pending",
      uploadedUrl: "",
      errorTxt: '',
    ),
    DocumentDataModel(
      documentType: "pan",
      documentStatus: "pending",
      uploadedUrl: "",
      errorTxt: '',
    ),
    DocumentDataModel(
      documentType: "selfie",
      documentStatus: "pending",
      uploadedUrl: "",
      errorTxt: '',
    )
  ];

  /// Show popup with zoomable image
  void showImagePopup(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: Container(
                color: Colors.black.withOpacity(0.8),
                width: double.infinity,
                height: double.infinity,
                child: InteractiveViewer(
                  panEnabled: true,
                  minScale: 0.8,
                  maxScale: 4.0,
                  child: Center(
                    child: CustomNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.contain,
                      borderRadius: 0,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 20,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  width: 30,
                  height: 30,
                  // decoration: AppStyles.primaryCircleBg,
                  child: const Icon(Icons.close, color: Colors.white, size: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<Position?> fetchCurrentLocation() async {
    try {
      if (locationPosition.value != null) {
        return locationPosition.value;
      }

      await Geolocator.requestPermission();




      LocationPermission permission = await Geolocator.checkPermission();

      // bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      // print("helloLocation");
      // print(serviceEnabled);
      // if (!serviceEnabled) {
      //   return _setDefaultLocation();
      // }

      if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
          return _setDefaultLocation();

      }

      final position = await Geolocator.getCurrentPosition();

      final geoAddress = await GeoUtil().getApiAddress(position.latitude, position.longitude);

      locationPosition.value = position;
      locationDetails.value = geoAddress;

      return position;
    } catch (e) {
      print("Location Error: $e");
      return _setDefaultLocation();
    }
  }

  Position defaultAmeerpetPosition() {
    return Position(
        latitude: 17.4375,
        longitude: 78.4483,
        timestamp: DateTime.now(),
        accuracy: 0,
        altitude: 0,
        heading: 0,
        speed: 0,
        speedAccuracy: 0,
        altitudeAccuracy: 0,
        headingAccuracy: 0);
  }

  Future<Position> _setDefaultLocation() async {
    final defaultPosition = defaultAmeerpetPosition();

    final geoAddress = await GeoUtil()
        .getApiAddress(defaultPosition.latitude, defaultPosition.longitude);

    locationPosition.value = defaultPosition;
    locationDetails.value = geoAddress;

    return defaultPosition;
  }

  Future<String>? performUploadFile(File selectedFile, String type,
      HomeViewModel homeViewModel) async {
    try {
      uploadFileObserver.value =  ApiResult.loading("Compressing");
      File file = await compressImage(selectedFile, 50);
      uploadFileObserver.value =  ApiResult.loading("");
      var uri = Uri.parse((apiProvider.apiLiveBaseUrl) + EndPoints.uploadFile);
      var request = http.MultipartRequest('POST', uri);
      request.headers['apiKey'] = apiProvider.apiKey;
      final preferenceManager = Get.put(PreferenceManager());
      final token = await preferenceManager.getValue("token") ?? "";
      request.headers['authorization'] = token;
      request.fields['type'] = type;
      var stream = http.ByteStream(file.openRead());
      stream.cast();
      var length = await file.length() ?? 0;
      var multipart = http.MultipartFile(
        'file',
        stream,
        length,
        filename: file.path.split('/').last,
      );
      request.files.add(multipart);
      var response = await request.send();
      String responseBody = await response.stream.bytesToString();
      final json = jsonDecode(responseBody);
      if (json != null) {
        final jsonData = UploadFileResponseModel.fromJson(json);
        if (jsonData.status == 1) {
          uploadFileObserver.value = ApiResult.success(jsonData);
          if (type == "homeImage") {
            homeViewModel.homeImage.value = jsonData.data ?? "";
          }
          else if (type == "homeImages" || type == "pgImages") {

            // 🔥 Make list mutable FIRST
            images.value = List<ImageDataModel>.from(images);

            final existIndex = images.indexWhere(
                  (imageObj) =>
              imageObj.imagesType ==
                  homeViewModel.selectedHomeImageType.value,
            );

            if (existIndex == -1) {
              images.add(
                ImageDataModel(
                  imagesType: homeViewModel.selectedHomeImageType.value,
                  images: [jsonData.data ?? ""],
                ),
              );
            } else {
              // 🔥 Also make inner list mutable
              final existingImages =
              List<String>.from(images[existIndex].images ?? []);

              existingImages.add(jsonData.data ?? "");

              images[existIndex] =
                  images[existIndex].copyWith(images: existingImages);
            }
          }
          else if (type == "unitImage") {
            homeViewModel.unitImage.value = jsonData.data ?? "";
          } else if (type == "homeLicence") {
            homeViewModel.homeLicence.value = jsonData.data ?? "";
          }  else if (type == "guestDoc") {
            aadharImage.value = jsonData.data ?? "";
          } else if (type == "aadhar" || type == "pan" || type == "selfie") {
            final existingKycList = kysDocuments.toList() ?? List.empty();
            final index = existingKycList.indexWhere((element) => element.documentType == type);
            if (index != -1) {
              final updatedKycList = existingKycList[index].copyWith(uploadedUrl: jsonData.data ?? "", documentStatus: "pending");
              existingKycList[index] = updatedKycList;
              kysDocuments.value = existingKycList;
              kysDocuments.refresh();
            }
          } else {
            uploadedImage.value = jsonData.data ?? "";
          }
          print(jsonData.data ?? "");

          if(type == "homeImages" || type == "pgImages")  return jsonData.data ?? "";
          Get.close(1);
          return jsonData.data ?? "";
        }
        throw jsonData.message.toString();
      }
      throw "Body Null";
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          backgroundColor: CustomColors.primary,
          colorText: CustomColors.white,
          snackPosition: SnackPosition.BOTTOM);
      uploadFileObserver.value = ApiResult.error(e.toString());
      return e.toString();
    }
  }



  Future<File> compressImage(File file, int quality) async {
    try {
      final originalSize = file.lengthSync();
      print('Original size: ${(originalSize / 1024).toStringAsFixed(2)} KB');
      final image = img.decodeImage(await file.readAsBytes());
      final tempDir = await getTemporaryDirectory();
      final targetPath =
          "${tempDir.path}/compressed_${file.path.split('/').last}";
      final compressedImage = File(targetPath)
        ..writeAsBytesSync(img.encodeJpg(image!, quality: quality));
      final compressedSize = compressedImage.lengthSync();
      print('Compressed size: ${(compressedSize / 1024).toStringAsFixed(2)} KB');
      return compressedImage;
    } catch (error) {
      return file;
    }
  }


  Future<void> validateVersion(ValidateVersionRequestModel request, HomeViewModel homeViewModel) async {
    try {
      validaVersionObserver.value =  ApiResult.loading("");
      final String? validatorResponse = AuthUtils.validateRequestFields(['version'], request.toJson());
      if (validatorResponse != null) throw validatorResponse;
      final response =
          await apiProvider.post(EndPoints.validateVersion, request.toJson());
      final body = response.body;
      if (response.statusCode == 401) {
        await preferenceManager.clearAll();
        Get.offAll(() => const SignInPage());
        throw "Please Login Again";
      }
      if (response.isOk && body != null) {
        final responseData = ValidateVersionResponseModel.fromJson(body);
        if (responseData.status == 1) {
          unitTypeDropList.clear();
          unitTypeDropList.assignAll(responseData.data?.unitType ?? []);
          filterLocations.clear();
          filterLocations.assignAll(responseData.data?.filterLocations ?? []);

          validaVersionObserver.value = ApiResult.success(responseData);

          userAuthenticated.value = (responseData.data?.userData != null);

          if (responseData.data?.validVersion == false) {
            Get.offAll(() => const UpdateVersionScreen());
          } else if ((responseData.data?.userBlocked ?? false) == true) {
            Get.offAll(() => const UserBlocked());
          } else {
            final prefs = await SharedPreferences.getInstance();
            final page = responseData.data?.page ?? (prefs.getString('page') ?? "");
            if (page.isEmpty) {
              Get.offAll(() => const SplashPage());
            } else {
              AuthUtils.navigateFromPageName(page);
            }
          }
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          backgroundColor: CustomColors.primary,
          colorText: CustomColors.white,
          snackPosition: SnackPosition.BOTTOM);
      validaVersionObserver.value = ApiResult.error(e.toString());
    }
  }


  Future<void> signIn(VerifyOtpRequestModel request) async {
    try {
      verifyOtpResponseObserver.value =  ApiResult.loading("");
      final String? validatorResponse = AuthUtils.validateRequestFields(
          ['mobile', 'otp', 'source', 'version', 'deviceId'], request.toJson());
      if (validatorResponse != null) throw validatorResponse;
      final response =
          await apiProvider.post(EndPoints.signIn, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = VerifyOtpResponseModel.fromJson(body);
        if (responseData.status == 1) {
          userAuthenticated.value = true;
          final page = responseData.data?.page;
          preferenceManager.setValue("page", page);
          preferenceManager.setValue(
              "registerValue", request.mobile.toString());
          preferenceManager.setValue("token", responseData.data?.token);
          verifyOtpResponseObserver.value = ApiResult.success(responseData);
          AuthUtils.navigateFromPageName(page);
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          backgroundColor: CustomColors.primary,
          colorText: CustomColors.white,
          snackPosition: SnackPosition.BOTTOM);
      verifyOtpResponseObserver.value = ApiResult.error(e.toString());
    }
  }



  Future<void> fetchContactDetails() async {
    try {
      contactDetailsResponseObserver.value = ApiResult.loading("");
      final response = await apiProvider.post(EndPoints.fetchContactDetails, {});
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = ContactDetailsResponseModel.fromJson(body);
        if (responseData.status == 1) {
          contactDetailsResponseObserver.value = ApiResult.success(responseData);
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    } catch (e) {
      Get.snackbar("Error", "something went wrong $e",
          backgroundColor: CustomColors.primary,
          colorText: CustomColors.white,
          snackPosition: SnackPosition.BOTTOM);
      contactDetailsResponseObserver.value = ApiResult.error(e.toString());
    }
  }



  Future<void> fetchUserDetails(bool refresh) async {
    try {
      final success = fetchUserDetailsObserver.value.maybeWhen(success: (data) => true, orElse: () => false);
      if (userAuthenticated.value == false) return;
      if (success && refresh == false) return;fetchUserDetailsObserver.value = ApiResult.loading("");

      final response = await apiProvider.post(EndPoints.fetchUserDetails, {});
      final body = response.body;
      if (response.isOk && body != null) {
        var responseData = FetchUserDetailsResponseModel.fromJson(body);
        if (responseData.status == 1) {
          fetchUserDetailsObserver.value = ApiResult.success(responseData);
          userId.value = responseData.data?.userDetails?.id ?? "";
          profilePic.value = responseData.data?.userDetails?.image ?? "";

          referralData.value = responseData.data?.userDetails?.referral ?? ReferralModel(referralCount: 3, referralAmount: 30);

          if (responseData.data?.userDetails?.kycDocuments?.length == 3) {
            kysDocuments.value = responseData.data?.userDetails?.kycDocuments ??
                initialKycDocuments;
          }

          // if(responseData.data?.address != null){
          //   locationDetails.value = responseData.data?.address;
          // }else{
          //   await fetchCurrentLocation();
          // }

          if ((responseData.data?.userDetails?.email ?? "").isEmpty == true ||
              responseData.data?.userDetails?.mobile.toString().isEmpty ==
                  true ||
              responseData.data?.userDetails?.mobile.toString().length != 10 ||
              (responseData.data?.userDetails?.name ?? "").isEmpty) {
            Get.offAll(() => const RegisterUserPage());
          } else if ((responseData.data?.userDetails?.blocked ?? false) ==
              true) {
            Get.offAll(() => const UserBlocked());
          }

          await FirebaseMessaging.instance.subscribeToTopic(responseData.data?.userDetails?.id ?? "");
          await FirebaseMessaging.instance.subscribeToTopic("all");
          await FirebaseMessaging.instance.unsubscribeFromTopic(
              responseData.data?.userDetails?.dealingType == "user" ? "host" : "user"
          );
          await FirebaseMessaging.instance.subscribeToTopic(responseData.data?.userDetails?.dealingType ?? "user");
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          backgroundColor: CustomColors.primary,
          colorText: CustomColors.white,
          snackPosition: SnackPosition.BOTTOM);
      fetchUserDetailsObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> registerUser(RegisterUserRequestModel request) async {
    try {
      registerUserResponseObserver.value =  ApiResult.loading("");
      final response =
          await apiProvider.post(EndPoints.registerUser, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = PrimaryResponseModel.fromJson(body);
        if (responseData.status == 1) {
          registerUserResponseObserver.value = ApiResult.success(responseData);
          Get.offAll(() => const MainPage());
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          backgroundColor: CustomColors.primary,
          colorText: CustomColors.white,
          snackPosition: SnackPosition.BOTTOM);
      registerUserResponseObserver.value = ApiResult.error(e.toString());
    }
  }

}
