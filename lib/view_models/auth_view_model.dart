import 'dart:convert';
import 'dart:io';
import 'package:bayitouser/pages/sign_in_page.dart';
import 'package:bayitouser/pages/splash_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as dio;

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
import '../models/requestModels/auth_request_model.dart';
import '../models/requestModels/sign_in_request_model.dart';
import '../models/requestModels/sign_up_request_model.dart';
import '../models/responseModels/auth_response_model.dart';
import '../models/responseModels/file_upload_response_model.dart';
import '../models/responseModels/open_hour_model.dart';
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

import '../utils/snack_bar_extension.dart';


class AuthViewModel extends GetxController {
  final apiProvider = Get.put(ApiProvider());
  final preferenceManager = Get.put(PreferenceManager());

  final validaVersionObserver =  ApiResult<ValidateVersionResponseModel>.init().obs;
  final openingHoursObserver = ApiResult<OpeningHoursResponseModel>.init().obs;
  final fetchDesignationsObserver = ApiResult<DesignationResponseModel>.init().obs;
  final registerUserObserver = ApiResult<SignInResponseModel>.init().obs;


  // Observers
  final fetchProfileDetailObserver = ApiResult<ProfileResponseModel>.init().obs;
  final signInObserver = ApiResult<SignInResponseModel>.init().obs;
  final signUpObserver = ApiResult<SignInResponseModel>.init().obs;
  final verifyOtpObserver = ApiResult<SignInResponseModel>.init().obs;

  final registerOutLetObserver = ApiResult<SignInResponseModel>.init().obs;

  final uploadFileObserver = ApiResult<FileUploadResponseModel>.init().obs;

  // Sign In Controllers
  final emailMobileController = TextEditingController();
  final signInPasswordController = TextEditingController();

  // Sign Up Controllers
  final fullNameController = TextEditingController();
  final signUpEmailController = TextEditingController();
  final mobileController = TextEditingController();
  final signUpPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final otpController = TextEditingController();
  final dobController = TextEditingController();
  final referralCodeController = TextEditingController();
  final perHourController = TextEditingController();

  final gender = "Male".obs;
  final selectedDesignations = <String>[].obs;
  final designationsList = <DesignationModel>[].obs;

  final profilePic = Rxn<File>();
  final profilePicUrl = "".obs;

  // Business Controllers
  final businessNameController = TextEditingController();
  final businessLicenceController = TextEditingController();
  final aboutBusinessController = TextEditingController();
  final outletType = "Cafe".obs;
  RxList<String> outletTypesDropList = <String>[].obs;

  final businessLogo = Rxn<File>();
  final businessLogoUrl = "".obs;
  final businessImages = <File>[].obs;
  final businessImagesUrls = <String>[].obs;

  // Location Controllers
  final address1Controller = TextEditingController();
  final address2Controller = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final landmarkController = TextEditingController();
  final pincodeController = TextEditingController();
  final latitudeController = TextEditingController();
  final longitudeController = TextEditingController();
  final gstNumberController = TextEditingController();
  final fssaiNumberController = TextEditingController();

  // Location Picker State
  final locationDetails = Rxn<LocationRequestModel>();
  final locationPosition = Rxn<Position>();

  // Opening Hours
  final RxList<DaySlotModel> openingHours =
      <DaySlotModel>[].obs;



  @override
  void onInit() {
    super.onInit();
    _determinePosition();
  }

  Future<void> _determinePosition() async {
    try {
      Position position = await GeoUtil().getCurrentPosition();
      locationPosition.value = position;
      latitudeController.text = position.latitude.toString();
      longitudeController.text = position.longitude.toString();
    } catch (e) {
      print(e);
    }
  }

  Future<String?> uploadImage(File file, String type) async {
    try {
      uploadFileObserver.value = ApiResult.loading("loading");

      final formData = dio.FormData.fromMap({
        'file': await dio.MultipartFile.fromFile(file.path),
        'type': type,
      });

      final response = await dio.Dio().post(
        '${apiProvider.apiLiveBaseUrl}${EndPoints.uploadFile}',
        data: formData,
        options: dio.Options(
          headers: {
            'apikey': apiProvider.apiKey,
            'Authorization': 'Bearer ${apiProvider.token}',
          },
        ),
      );

      if (response.statusCode == 200) {
        final data = FileUploadResponseModel.fromJson(response.data);
        if (data.status == 1) {
          uploadFileObserver.value = ApiResult.success(data);
          return data.data?.imageUrl;
        }
      }
      throw "Upload failed";
    } catch (e) {
      uploadFileObserver.value = ApiResult.error(e.toString());
      Get.showCustomSnackBar(title: 'Error', message: "Image upload failed: $e");
      return null;
    }
  }

  Future<void> validateVersion(ValidateVersionRequestModel request) async {
    try {
      validaVersionObserver.value = ApiResult.loading("loading");
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
          outletTypesDropList.clear();
          outletType.value = responseData.data?.outletTypes?.firstOrNull ?? "";
          outletTypesDropList.assignAll(responseData.data?.outletTypes ?? []);

          validaVersionObserver.value = ApiResult.success(responseData);

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
      Get.showCustomSnackBar(title: 'Error', message: "$e");
      validaVersionObserver.value = ApiResult.error(e.toString());
    }
  }


  Future<void> signIn() async {
    try {
      signInObserver.value = ApiResult.loading("loading");
      final version = await AuthUtils.getAppVersion();
      final deviceDetails = await AuthUtils.getDeviceDetails();
      final request = SignInRequestModel(
          key: emailMobileController.text,
          password: signInPasswordController.text, version:version,
          deviceDetails:deviceDetails
      );
      final response = await apiProvider.post(EndPoints.signIn, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final data = SignInResponseModel.fromJson(body);
        if (data.status == 1) {
          signInObserver.value = ApiResult.success(data);
          final page = data.data?.page;
          preferenceManager.setValue("page", page ?? "");
          preferenceManager.setValue("registerValue", request.key.toString());
          preferenceManager.setValue("token", data.data?.token ?? "");
          signInObserver.value = ApiResult.success(data);
          AuthUtils.navigateFromPageName(page);
        } else {
          signInObserver.value = ApiResult.error(data.message ?? "");
          Get.showCustomSnackBar(title: 'Failed', message: data.message ?? '');
        }
      } else {
        signInObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      signInObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> signUp() async {
    try {
      // Final Validation
      if (fullNameController.text.isEmpty ||
          signUpEmailController.text.isEmpty ||
          mobileController.text.isEmpty ||
          signUpPasswordController.text.isEmpty) {
        Get.showCustomSnackBar(title: 'Error', message: "Please complete all registration steps");
        return;
      }

      signUpObserver.value = ApiResult.loading("loading");

      // 1. Upload Profile Pic if exists
      if (profilePic.value != null && profilePicUrl.isEmpty) {
        profilePicUrl.value = await uploadImage(profilePic.value!, "profile") ?? "";
      }


      final request = SignUpRequestModel(
          mobile: int.tryParse(mobileController.text),
          name: fullNameController.text,
          email: signUpEmailController.text,
          password: signUpPasswordController.text,
          confirmPassword: confirmPasswordController.text,
          profilePic: profilePicUrl.value
      );

      final response = await apiProvider.post(EndPoints.signUp, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final data = SignInResponseModel.fromJson(body);
        if (data.status == 1) {
          signUpObserver.value = ApiResult.success(data);
          Get.showCustomSnackBar(title: 'Success', message: data.message ?? 'Otp Send successful');
        } else {
          signUpObserver.value = ApiResult.error(data.message ?? "");
          Get.showCustomSnackBar(title: 'Failed', message: data.message ?? '');
        }
      } else {
        signUpObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      signUpObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> verifyOtp() async {
    try {
      // Final Validation
      if (fullNameController.text.isEmpty ||
          signUpEmailController.text.isEmpty ||
          mobileController.text.isEmpty ||
          signUpPasswordController.text.isEmpty || otpController.text.isEmpty) {
        Get.showCustomSnackBar(title: 'Error', message: "Please complete all registration steps");
        return;
      }

      verifyOtpObserver.value = ApiResult.loading("loading");



      final request = SignUpRequestModel(
        mobile: int.tryParse(mobileController.text),
        name: fullNameController.text,
        email: signUpEmailController.text,
        password: signUpPasswordController.text,
        confirmPassword: confirmPasswordController.text,
        profilePic: profilePicUrl.value,
        otp: int.tryParse(otpController.text),
      );

      final response = await apiProvider.post(EndPoints.verifyOtp, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final data = SignInResponseModel.fromJson(body);
        if (data.status == 1) {
          verifyOtpObserver.value = ApiResult.success(data);
          final page = data.data?.page;
          preferenceManager.setValue("page", page ?? "");
          preferenceManager.setValue("token", data.data?.token ?? "");
          Get.showCustomSnackBar(title: 'Success', message: data.message ?? 'Otp Send successful');
          AuthUtils.navigateFromPageName(data.data?.page);
        } else {
          verifyOtpObserver.value = ApiResult.error(data.message ?? "");
          Get.showCustomSnackBar(title: 'Failed', message: data.message ?? '');
        }
      } else {
        verifyOtpObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      verifyOtpObserver.value = ApiResult.error(e.toString());
    }
  }


  
  Future<void> fetchProfileDetails() async {
    try {
      fetchProfileDetailObserver.value = ApiResult.loading("loading");
      final response = await apiProvider.post(EndPoints.getProfile, {});
      final body = response.body;
      if (response.isOk && body != null) {
        final data = ProfileResponseModel.fromJson(body);
        if (data.status == 1) {
          fetchProfileDetailObserver.value = ApiResult.success(data);
        } else {
          Get.showCustomSnackBar(title: 'Failed', message: data.message ?? '');
          fetchProfileDetailObserver.value = ApiResult.error(data.message ?? "");
        }
      } else {
        fetchProfileDetailObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      fetchProfileDetailObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> fetchDesignations() async {
    try {
      fetchDesignationsObserver.value = ApiResult.loading("loading");
      final response = await apiProvider.post(EndPoints.fetchDesignations, {});
      final body = response.body;
      if (response.isOk && body != null) {
        final data = DesignationResponseModel.fromJson(body);
        if (data.status == 1) {
          designationsList.assignAll(data.data ?? []);
          fetchDesignationsObserver.value = ApiResult.success(data);
        } else {
          fetchDesignationsObserver.value = ApiResult.error(data.message ?? "");
        }
      } else {
        fetchDesignationsObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      fetchDesignationsObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> registerUser() async {
    try {
      registerUserObserver.value = ApiResult.loading("loading");

      final request = RegisterUserRequestModel(
        name: fullNameController.text,
        dob: dobController.text,
        gender: gender.value,
        referralCode: referralCodeController.text,
        designations: selectedDesignations.toList(),
        charges: RegisterChargesRequestModel(
          perHour: int.tryParse(perHourController.text) ?? 0,
        ),
        location: RegisterLocationRequestModel(
          address1: address1Controller.text,
          address2: address2Controller.text,
          landMark: landmarkController.text,
          city: cityController.text,
          state: stateController.text,
          pinCode: int.tryParse(pincodeController.text) ?? 0,
          latitude: double.tryParse(latitudeController.text) ?? 0.0,
          longitude: double.tryParse(longitudeController.text) ?? 0.0,
        ),
      );

      final response = await apiProvider.post(EndPoints.registerUser, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final data = SignInResponseModel.fromJson(body);
        if (data.status == 1) {
          registerUserObserver.value = ApiResult.success(data);
          final page = data.data?.page;
          preferenceManager.setValue("page", page ?? "");
          AuthUtils.navigateFromPageName(page);
        } else {
          registerUserObserver.value = ApiResult.error(data.message ?? "");
          Get.showCustomSnackBar(title: 'Failed', message: data.message ?? '');
        }
      } else {
        registerUserObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      registerUserObserver.value = ApiResult.error(e.toString());
      Get.showCustomSnackBar(title: 'Error', message: e.toString());
    }
  }

}
