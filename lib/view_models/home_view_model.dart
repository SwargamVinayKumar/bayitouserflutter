import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../api/api_provider.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';

import '../components/helper_bottom_sheet.dart';
import '../models/request_model/auth_request_model.dart';
import '../models/request_model/bookings_request_model.dart';
import '../models/response_model/auth_response_model.dart';
import '../models/response_model/home_response_model.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_color.dart';
import '../utils/preference_manager.dart';
import 'auth_view_model.dart';

class HomeViewModel extends GetxController{

  final apiProvider = Get.put(ApiProvider());

  final authViewModel = Get.put(AuthViewModel());
  final preferenceManager = Get.put(PreferenceManager());

  Rx<BookingRequestModel?> bookingRequestModelObserver = Rx<BookingRequestModel?>(null);
  final updateFavouritesObserver =  ApiResult<PrimaryResponseModel>.init().obs;

  final fetchCouponsObserver =  PaginationModel(data:  ApiResult<FetchCouponsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchNotificationsObserver =  PaginationModel(data:  ApiResult<FetchNotificationsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final deleteNotificationObserver =    ApiResult<PrimaryResponseModel>.init().obs;
  final fetchHomeDetailsObserver =  ApiResult<FetchHomeDetailsResponseModel>.init().obs;
  final fetchFavouriteHomesObserver =  PaginationModel(data:  ApiResult<FetchHomesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchSearchedHomesObserver =  PaginationModel(data:  ApiResult<FetchHomesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;

  final fetchHomesObserver =  PaginationModel(data:  ApiResult<FetchHomesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchRecentlyViewedHomesObserver = PaginationModel(data:  ApiResult<FetchHomesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchNearbyHomesObserver =  PaginationModel(data:  ApiResult<FetchHomesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchPopularHomesObserver =  PaginationModel(data:  ApiResult<FetchHomesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchFilterHomesObserver =  PaginationModel(data:  ApiResult<FetchHomesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;

  final fetchAmenitiesObserver =  PaginationModel(data: ApiResult<FetchAmenitiesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchHomeUnitsObserver =  PaginationModel(data: ApiResult<FetchHomeUnitsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;

  final fetchRatingAndReviewsObserver =  PaginationModel(data: ApiResult<FetchRatingAndReviewsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;

  final addRatingAndReviewObserver =  ApiResult<PrimaryResponseModel>.init().obs;

  RxList<String> filterLocations = <String>[].obs;
  RxList<String> filterHomeTypes = <String>[].obs;
  RxList<String> filterUnitTypes = <String>[].obs;
  RxString bookingType = "Daily".obs;
  Rx<String> unitImage = "".obs;
  RxList<String> unitSpecialAmenities = <String>[].obs;
  Rx<RangeValues> rangeValue = const RangeValues(0.0, 20000.0).obs;

  Rx<String> homeImage = "".obs;
  Rx<String> checkInTime = "".obs;
  Rx<String> checkOutTime = "".obs;
  Rx<String> homeLicence = "".obs;
  RxList<String> rules = <String>[].obs;
  RxList<FaqModel> faqs = <FaqModel>[].obs;
  RxList<String> amenityIds = <String>[].obs;


  final fetchMapLocationsObserver =  ApiResult<FetchHomesResponseModel>.init().obs;

  ///host observers
  ///
  final fetchHostHomesObserver =  PaginationModel(data:  ApiResult<FetchHomesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final getImagesObserver = GetImagesTypeModel(data:[],isLoading: false).obs;

  Rx<String> selectedHomeImageType = "".obs;


  final registerUnitObserver =  ApiResult<RegisterUnitResponseModel>.init().obs;
  final fetchHomeStatisticsObserver =  ApiResult<FetchHomeStatisticsResponseModel>.init().obs;

  final setAsPrimaryHomeResponseObserver =  ApiResult<FetchUserDetailsResponseModel>.init().obs;

  final deletedCouponObserver =  ApiResult<PrimaryResponseModel>.init().obs;
  final createCouponObserver =  ApiResult<CreateCouponResponseModel>.init().obs;



  Future<void> fetchHomeDetails(PaginationRequestModel request) async {
    try{
      fetchHomeDetailsObserver.value =  ApiResult.loading("");

      final response = await apiProvider.post(EndPoints.fetchHomeDetails,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        var responseData = FetchHomeDetailsResponseModel.fromJson(body);
        if(responseData.status == 1){
          fetchHomeDetailsObserver.value = ApiResult.success(responseData);
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      fetchHomeDetailsObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> fetchMapLocations(PaginationRequestModel request) async {
    try{
      fetchMapLocationsObserver.value = ApiResult.loading("");
      final response = await apiProvider.post(EndPoints.fetchMapLocation,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        var responseData = FetchHomesResponseModel.fromJson(body);
        if(responseData.status == 1){
          fetchMapLocationsObserver.value = ApiResult.success(responseData);
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      fetchMapLocationsObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> addRatingAndReview(RatingReviewRequestModel request,BuildContext context) async {
    try{
      addRatingAndReviewObserver.value = ApiResult.loading("");
      final String? validatorResponse = AuthUtils.validateRequestFields(['homeId','rating','review'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;
      final response = await apiProvider.post(EndPoints.addRatingAndReviews,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        var responseData = PrimaryResponseModel.fromJson(body);
        if(responseData.status == 1){
          Get.close(1);
          addRatingAndReviewObserver.value = ApiResult.success(responseData);
          showModalBottomSheet(
            context: context,
            isScrollControlled: true, // allows full height scroll
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            builder: (context) {
              return HelperBottomSheet(assetImage: "assets/images/congratulations.png",title:"Thank You For Feedback",
                  message: "Your Rating Submitted Successfully"
                  ,btn1Txt: "Done", btn1Click: () {
                Get.back();
              });
            },
          );
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      addRatingAndReviewObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> fetchHomes(PaginationRequestModel request,bool refresh) async {
    if(authViewModel.selectedTab.value != "Homes") return;
    final observer = request.type == "recentlyViewed" ? fetchRecentlyViewedHomesObserver : request.type == "favourites" ? fetchFavouriteHomesObserver : request.type == "search" ? fetchSearchedHomesObserver : request.type == "nearby" ? fetchNearbyHomesObserver : request.type == "popular" ? fetchPopularHomesObserver : request.type == "filter" ? fetchFilterHomesObserver : fetchHomesObserver;
    final endPoint = request.type == "recentlyViewed" ? EndPoints.fetchRecentlyViewedHomes : request.type == "favourites" ? EndPoints.fetchFavouriteHomes : request.type == "search" ? EndPoints.fetchSearchHomes : request.type == "nearby" ? EndPoints.fetchNearestHomes : request.type == "popular" ? EndPoints.fetchPopulerHomes : request.type == "filter" ? EndPoints.fetchFilterHomes : EndPoints.fetchHomes ;
    try{
      PaginationRequestModel newRequest = request;
      if(request.type == "filter"){
        newRequest = request.copyWith(filterRequest: FilterRequestModel(locations: filterLocations,homeTypes: filterHomeTypes,unitTypes: filterUnitTypes,bookingType: bookingType.value,startPrice: rangeValue.value.start,endPrice: rangeValue.value.end));
      }
      if(refresh == true){
        observer.value = PaginationModel(data:  ApiResult<FetchHomesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "");
      }

      if (observer.value.isPaginationCompleted || observer.value.isLoading == true) return;

      if(observer.value.page == 1){
        observer.value.data.value =  ApiResult.loading("");
      }
      else{
        observer.value.isLoading = true;
        observer.refresh();
      }

      const maxListApiReturns = 10;
      observer.refresh();

      final String? validatorResponse = AuthUtils.validateRequestFields(['page'], newRequest.toJson());
      if(validatorResponse != null) throw validatorResponse;

      final response = await apiProvider.post(endPoint,newRequest.toJson());

      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FetchHomesResponseModel.fromJson(body);
        if(responseData.status == 1){
          observer.value.data.value.maybeWhen(success: (data) {
            final oldList = (data as FetchHomesResponseModel?)?.data?.toList();
            for (final home in responseData.data ?? []) {
              if (oldList?.any((e) => e.id == home.id) == false) {
                oldList?.add(home);
              }
            }
            observer.value.data.value = ApiResult.success(responseData.copyWith(data: oldList));
          }, orElse: () {
            observer.value.data.value = ApiResult.success(responseData);
          });

          observer.value.page = observer.value.page + 1;
          if ((responseData.data?.length ?? 0) < maxListApiReturns) {
            observer.value.isPaginationCompleted = true;
          }
          observer.value.isLoading = false;
          observer.refresh();
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      observer.value.data.value = ApiResult.error(e.toString());
      observer.value.isLoading = false;
      observer.refresh();
    }
  }


  Future<void> fetchRatingAndReviews(PaginationRequestModel request,bool refresh) async {
    final observer = fetchRatingAndReviewsObserver;
    try{

      if(refresh == true){
        observer.value = PaginationModel(data:  ApiResult<FetchRatingAndReviewsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "");
      }

      if (observer.value.isPaginationCompleted || observer.value.isLoading == true) return;

      if(observer.value.page == 1){
        observer.value.data.value =  ApiResult.loading("");
      }
      else{
        observer.value.isLoading = true;
        observer.refresh();
      }

      const maxListApiReturns = 20;
      observer.refresh();

      final String? validatorResponse = AuthUtils.validateRequestFields(['page'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;

      final response = await apiProvider.post(EndPoints.fetchRatingAndReviews,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FetchRatingAndReviewsResponseModel.fromJson(body);
        if(responseData.status == 1){
          observer.value.data.value.maybeWhen(success: (data) {
            final oldList = (data as FetchRatingAndReviewsResponseModel?)?.data?.toList();
            oldList?.addAll(responseData.data ?? List.empty());
            observer.value.data.value = ApiResult.success(responseData.copyWith(data: oldList));
          }, orElse: () {
            observer.value.data.value = ApiResult.success(responseData);
          });

          observer.value.page = observer.value.page + 1;
          if ((responseData.data?.length ?? 0) < maxListApiReturns) {
            observer.value.isPaginationCompleted = true;
          }
          observer.value.isLoading = false;
          observer.refresh();
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      observer.value.data.value = ApiResult.error(e.toString());
      observer.value.isLoading = false;
      observer.refresh();
    }
  }


  Future<void> fetchCoupons(PaginationRequestModel request,bool refresh) async {
    final observer = fetchCouponsObserver;
    try{
      if(refresh == true){
        observer.value = PaginationModel(data: ApiResult<FetchCouponsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "");
      }

      if (observer.value.isPaginationCompleted || observer.value.isLoading == true) return;

      if(observer.value.page == 1){
        observer.value.data.value =  ApiResult.loading("");
      }
      else{
        observer.value.isLoading = true;
        observer.refresh();
      }

      const maxListApiReturns = 20;
      observer.refresh();

      final String? validatorResponse = AuthUtils.validateRequestFields(['page'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;

      final response = await apiProvider.post(EndPoints.fetchCoupons,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FetchCouponsResponseModel.fromJson(body);
        if(responseData.status == 1){
          observer.value.data.value.maybeWhen(success: (data) {
            final oldList = (data as FetchCouponsResponseModel?)?.data?.toList();
            oldList?.addAll(responseData.data ?? List.empty());
            observer.value.data.value = ApiResult.success(responseData.copyWith(data: oldList));
          }, orElse: () {
            observer.value.data.value = ApiResult.success(responseData);
          });

          observer.value.page = observer.value.page + 1;
          if ((responseData.data?.length ?? 0) < maxListApiReturns) {
            observer.value.isPaginationCompleted = true;
          }
          observer.value.isLoading = false;
          observer.refresh();
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      observer.value.data.value = ApiResult.error(e.toString());
      observer.value.isLoading = false;
      observer.refresh();
    }
  }

  Future<void> fetchNotifications(PaginationRequestModel request,bool refresh) async {
    final observer = fetchNotificationsObserver;
    try{
      if(refresh == true){
        observer.value = PaginationModel(data:  ApiResult<FetchNotificationsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "");
      }

      if (observer.value.isPaginationCompleted || observer.value.isLoading == true) return;

      if(observer.value.page == 1){
        observer.value.data.value = ApiResult.loading("");
      }
      else{
        observer.value.isLoading = true;
        observer.refresh();
      }

      const maxListApiReturns = 20;
      observer.refresh();

      final String? validatorResponse = AuthUtils.validateRequestFields(['page'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;

      final response = await apiProvider.post(EndPoints.fetchNotifications,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FetchNotificationsResponseModel.fromJson(body);
        if(responseData.status == 1){
          observer.value.data.value.maybeWhen(success: (data) {
            final oldList = (data as FetchNotificationsResponseModel)?.data?.toList();
            oldList?.addAll(responseData.data ?? List.empty());
            observer.value.data.value = ApiResult.success(responseData.copyWith(data: oldList));
          }, orElse: () {
            observer.value.data.value = ApiResult.success(responseData);
          });

          observer.value.page = observer.value.page + 1;
          if ((responseData.data?.length ?? 0) < maxListApiReturns) {
            observer.value.isPaginationCompleted = true;
          }
          observer.value.isLoading = false;
          observer.refresh();
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      observer.value.data.value = ApiResult.error(e.toString());
      observer.value.isLoading = false;
      observer.refresh();
    }
  }

  Future<void> deleteNotification(String? notificationId) async {
    try{
      if(notificationId == null || notificationId.trim().isEmpty) throw "couponId Is Required";
      deleteNotificationObserver.value = ApiResult.loading(notificationId);
      final response = await apiProvider.post(EndPoints.deleteNotification,{"notificationId":notificationId});
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = PrimaryResponseModel.fromJson(body);
        if(responseData.status == 1){
          fetchNotificationsObserver.value.data.value.whenOrNull(success: (responseData){
            var userResponse = (responseData as FetchNotificationsResponseModel);
            final coupons = userResponse.data?.toList() ?? List.empty();
            coupons.removeWhere((notification) => notification.id == notificationId);
            userResponse = userResponse.copyWith(data:coupons);
            fetchNotificationsObserver.value.data.value = ApiResult.success(userResponse);
          });
          deleteNotificationObserver.value = ApiResult.success(responseData);
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      deleteNotificationObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> updateFavouriteStatus(String homeId,String pgId,bool isFavorite) async {
    try{
      updateFavouritesObserver.value =  ApiResult.loading("");
      final response = await apiProvider.post(EndPoints.updateFavouriteStatus,{"homeId":homeId});
      final body = response.body;
      if(response.isOk && body !=null){
        var responseData = PrimaryResponseModel.fromJson(body);
        if(responseData.status == 1){
          final updatingObserverList = [fetchHomesObserver,fetchRecentlyViewedHomesObserver,fetchSearchedHomesObserver,fetchFilterHomesObserver,fetchFavouriteHomesObserver,fetchNearbyHomesObserver,fetchPopularHomesObserver];
          for (var observer in updatingObserverList) {
            observer.value.data.value.whenOrNull(
                success: (data){
                  final observerData = (data as FetchHomesResponseModel);
                  final list = observerData.data?.toList() ?? List.empty();
                  final index = list.indexWhere((element) => element.id == homeId);
                  if(index != -1){
                    final updatedUser = list[index].copyWith(isFavorite:!isFavorite);
                    list[index] = updatedUser;
                    observer.value.data.value = ApiResult.success(observerData.copyWith(data: list));
                    observer.refresh();
                  }
                });
          }

          fetchHomeDetailsObserver.value.whenOrNull(
              success: (data) {
                final observerData = (data as FetchHomeDetailsResponseModel);
                final updatedData = observerData.data?.copyWith(isFavorite: !isFavorite);
                fetchHomeDetailsObserver.value = ApiResult.success(observerData.copyWith(data: updatedData));
                fetchHomeDetailsObserver.refresh();
              }
          );
          updateFavouritesObserver.value = ApiResult.success(responseData);

          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      updateFavouritesObserver.value = ApiResult.error(e.toString());
    }
  }

}