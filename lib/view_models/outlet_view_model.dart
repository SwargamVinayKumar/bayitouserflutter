import 'package:bayitouser/models/responseModels/outlet_response_model.dart';
import 'package:bayitouser/view_models/auth_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/api_provider.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';
import '../components/helper_bottom_sheet.dart';
import '../models/requestModels/booking_request_model.dart';
import '../models/requestModels/page_request_model.dart';
import '../models/responseModels/auth_response_model.dart';
import '../models/responseModels/page_model.dart';
import '../models/responseModels/table_response_model.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_color.dart';
import '../utils/preference_manager.dart';
import '../utils/snack_bar_extension.dart';


class OutletViewModel extends GetxController {
  final apiProvider = Get.put(ApiProvider());
  final authViewModel = Get.put(AuthViewModel());
  final preferenceManager = Get.put(PreferenceManager());

  final fetchAmenitiesObserver =  PaginationModel(data:  ApiResult<FetchAmenitiesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;

  final fetchRatingAndReviewsObserver =  PaginationModel(data:ApiResult<FetchRatingAndReviewsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;

  final addRatingAndReviewObserver =   ApiResult<PrimaryResponseModel>.init().obs;


  final fetchSearchedOutletsObserver = PaginationModel(
    data: ApiResult<FetchOutletsResponse>.init().obs,
    isLoading: false,
    isPaginationCompleted: false,
    page: 1,
    error: "",
  ).obs;

  final fetchNearbyOutletsObserver = PaginationModel(
    data: ApiResult<FetchOutletsResponse>.init().obs,
    isLoading: false,
    isPaginationCompleted: false,
    page: 1,
    error: "",
  ).obs;

  final fetchOutletObserver = PaginationModel(
    data: ApiResult<FetchOutletsResponse>.init().obs,
    isLoading: false,
    isPaginationCompleted: false,
    page: 1,
    error: "",
  ).obs;

  final fetchFavouriteOutletsObserver = PaginationModel(
    data: ApiResult<FetchOutletsResponse>.init().obs,
    isLoading: false,
    isPaginationCompleted: false,
    page: 1,
    error: "",
  ).obs;

  final fetchTrendingOutletsObserver = PaginationModel(
    data: ApiResult<FetchOutletsResponse>.init().obs,
    isLoading: false,
    isPaginationCompleted: false,
    page: 1,
    error: "",
  ).obs;

  final fetchMapLocationsObserver = PaginationModel(
    data: ApiResult<FetchOutletsResponse>.init().obs,
    isLoading: false,
    isPaginationCompleted: false,
    page: 1,
    error: "",
  ).obs;

  final fetchOutletDetailsObserver = ApiResult<OutletDetailsResponseModel>.init().obs;

  final updateFavouritesObserver =  ApiResult<PrimaryResponseModel>.init().obs;


  Future<void> fetchOutlets(PaginationRequestModel request, bool refresh,) async {

    final observer =
    request.type == "favourites"
        ? fetchFavouriteOutletsObserver
        : request.type == "search"
        ? fetchSearchedOutletsObserver
        : request.type == "nearby"
        ? fetchNearbyOutletsObserver
        : request.type == "trending"
        ? fetchTrendingOutletsObserver
        : fetchOutletObserver;


    final endPoint =
    request.type == "favourites"
        ? EndPoints.fetchFavOutlets
        : request.type == "search"
        ? EndPoints.fetchSearchOutlets
        : request.type == "nearby"
        ? EndPoints.fetchNearByOutlets
        : request.type == "trending"
        ? EndPoints.fetchTrendingOutlets
        : EndPoints.fetchOutlets;

    try {

      if (refresh) {
        observer.value = PaginationModel(
          data: ApiResult<FetchOutletsResponse>.init().obs,
          isLoading: false,
          isPaginationCompleted: false,
          page: 1,
          error: "",
        );
      }

      if (observer.value.isPaginationCompleted ||
          observer.value.isLoading) {
        return;
      }


      if (observer.value.page == 1) {
        observer.value.data.value = ApiResult.loading("");
      } else {
        observer.value.isLoading = true;
        observer.refresh();
      }

      const int maxListApiReturns = 20;

      var requestData = request.copyWith(
        page: observer.value.page,
        limit: maxListApiReturns,
      );

      if(request.type == "nearby"){
        requestData = request.copyWith(
          page: observer.value.page,
          longitude: authViewModel.locationPosition.value?.longitude,
          latitude: authViewModel.locationPosition.value?.latitude
        );
      }

      final String? validatorResponse =
      AuthUtils.validateRequestFields(
        ['page'],
        requestData.toJson(),
      );

      if (validatorResponse != null) {
        throw validatorResponse;
      }

      print("Request: ${requestData.toJson()}");
      print("Endpoint: $endPoint");

      final response = await apiProvider.post(
        endPoint,
        requestData.toJson(),
      );

      final body = response.body;

      if (response.isOk && body != null) {
        final responseData =
        FetchOutletsResponse.fromJson(body);

        if (responseData.status == 1) {
          observer.value.data.value.maybeWhen(
            success: (oldResponse) {
              final List<OutletModel> oldList =
              List<OutletModel>.from(
                oldResponse?.data ?? [],
              );

              for (final outlet
              in responseData.data ?? []) {
                final alreadyExists = oldList.any(
                      (oldOutlet) =>
                  oldOutlet.id == outlet.id,
                );

                if (!alreadyExists) {
                  oldList.add(outlet);
                }
              }

              observer.value.data.value =
                  ApiResult.success(
                    responseData.copyWith(
                      data: oldList,
                    ),
                  );
            },
            orElse: () {
              observer.value.data.value =
                  ApiResult.success(responseData);
            },
          );

          observer.value.page++;

          if ((responseData.data?.length ?? 0) <
              maxListApiReturns) {
            observer.value.isPaginationCompleted = true;
          }

          observer.value.isLoading = false;
          observer.refresh();

          return;
        }

        throw responseData.message ??
            "Unable to fetch outlets";
      }

      throw "Response Body Null";
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        backgroundColor: CustomColors.secondary,
        colorText: CustomColors.primary,
        snackPosition: SnackPosition.BOTTOM,
      );

      observer.value.data.value =
          ApiResult.error(e.toString());

      observer.value.isLoading = false;
      observer.refresh();
    }
  }

  Future<void> fetchMapLocations(PaginationRequestModel request, bool refresh) async {
    final observer = fetchMapLocationsObserver;
    try {
      if (refresh) {
        observer.value = PaginationModel(
          data: ApiResult<FetchOutletsResponse>.init().obs,
          isLoading: false,
          isPaginationCompleted: false,
          page: 1,
          error: "",
        );
      }

      if (observer.value.isPaginationCompleted || observer.value.isLoading) return;

      if (observer.value.page == 1) {
        observer.value.data.value = ApiResult.loading("loading");
      } else {
        observer.value.isLoading = true;
        observer.refresh();
      }

      const int limit = 20;

      final requestData = request.copyWith(
        page: observer.value.page,
      );

      final response = await apiProvider.post(
        EndPoints.fetchNearByOutlets,
        requestData.toJson(),
      );

      final body = response.body;

      if (response.isOk && body != null) {
        final responseData = FetchOutletsResponse.fromJson(body);
        if (responseData.status == 1) {
          final newOutlets = responseData.data ?? [];

          observer.value.data.value.maybeWhen(
            success: (oldResponse) {
              final oldList = List<OutletModel>.from(oldResponse?.data ?? []);
              for (final outlet in newOutlets) {
                if (!oldList.any((e) => e.id == outlet.id)) {
                  oldList.add(outlet);
                }
              }
              observer.value.data.value = ApiResult.success(responseData.copyWith(
                data: oldList,
              ));
            },
            orElse: () {
              observer.value.data.value = ApiResult.success(responseData);
            },
          );

          observer.value.page++;
          if (newOutlets.length < limit) {
            observer.value.isPaginationCompleted = true;
          }

          observer.value.isLoading = false;
          observer.refresh();
          return;
        }
        throw responseData.message ?? "Unable to fetch locations";
      }
      throw "Response Body Null";
    } catch (e) {
      observer.value.data.value = ApiResult.error(e.toString());
      observer.value.isLoading = false;
      observer.refresh();
    }
  }

  Future<void> updateFavouriteStatus(String outletId,bool isFavorite) async {
    try{
      updateFavouritesObserver.value =  ApiResult.loading("");
      final response = await apiProvider.post(EndPoints.updateFavouriteStatus,{"outletId":outletId});
      final body = response.body;
      if(response.isOk && body !=null){
        var responseData = PrimaryResponseModel.fromJson(body);
        if(responseData.status == 1){
          fetchOutletDetailsObserver.value.whenOrNull(
              success: (data) {
                final observerData = (data as OutletDetailsResponseModel);
                final updatedData = observerData.data?.copyWith(isFavorite: !isFavorite);
                fetchOutletDetailsObserver.value = ApiResult.success(observerData.copyWith(data: updatedData));
                fetchOutletDetailsObserver.refresh();
              }
          );
          await Future.delayed(const Duration(milliseconds: 500));
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


  Future<void> fetchOutletDetails(String outletId) async {
    try {
      fetchOutletDetailsObserver.value = ApiResult.loading("loading");
      final response = await apiProvider.post(
        EndPoints.fetchOutletDetails,
        {
          "outletId": outletId,
        },
      );
      final body = response.body;
      print("Outlet Details Response: $body");
      if (response.isOk && body != null) {
        final data = OutletDetailsResponseModel.fromJson(body);
        if (data.status == 1) {
          fetchOutletDetailsObserver.value = ApiResult.success(data);
        } else {
          Get.showCustomSnackBar(title: 'Failed', message: data.message ?? '');
          fetchOutletDetailsObserver.value = ApiResult.error(data.message ?? "");
        }
      } else {
        fetchOutletDetailsObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      fetchOutletDetailsObserver.value = ApiResult.error(e.toString());
      Get.showCustomSnackBar(title: 'Error', message:  e.toString());
    }
  }

  Future<void> fetchAmenities(PaginationRequestModel request,bool refresh) async {
    final observer = fetchAmenitiesObserver;
    try{
      if(refresh == true){
        observer.value = PaginationModel(data:  ApiResult<FetchAmenitiesResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "");
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

      final response = await apiProvider.post(EndPoints.fetchAmenities,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FetchAmenitiesResponseModel.fromJson(body);
        if(responseData.status == 1){
          observer.value.data.value.maybeWhen(success: (data) {
            final oldList = (data as FetchAmenitiesResponseModel?)?.data?.toList();
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

  Future<void> addRatingAndReview(RatingReviewRequestModel request,BuildContext context) async {
    try{
      addRatingAndReviewObserver.value = ApiResult.loading("");
      final String? validatorResponse = AuthUtils.validateRequestFields(['rating','review'], request.toJson());
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
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.secondary,snackPosition: SnackPosition.BOTTOM);
      addRatingAndReviewObserver.value = ApiResult.error(e.toString());
    }
  }


  Future<void> fetchRatingAndReviews(PaginationRequestModel request,bool refresh) async {
    final observer = fetchRatingAndReviewsObserver;
    try{

      if(refresh == true){
        observer.value = PaginationModel(data: ApiResult<FetchRatingAndReviewsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "");
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

      final response = await apiProvider.post(request.tableId?.isNotEmpty == true ? EndPoints.fetchTableRatingAndReviews : EndPoints.fetchRatingAndReviews,request.toJson());
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

}