import 'package:bayitouser/models/responseModels/outlet_response_model.dart';
import 'package:get/get.dart';
import '../api/api_provider.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';
import '../models/requestModels/page_request_model.dart';
import '../models/responseModels/page_model.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_color.dart';
import '../utils/preference_manager.dart';
import '../utils/snack_bar_extension.dart';


class OutletViewModel extends GetxController {
  final apiProvider = Get.put(ApiProvider());
  final preferenceManager = Get.put(PreferenceManager());

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

  final fetchOutletDetailObserver = ApiResult<OutletDetailsResponseModel>.init().obs;


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

      const int maxListApiReturns = 10;


      final requestData = request.copyWith(
        page: observer.value.page,
      );

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

  Future<void> fetchOutletDetails(String outletId) async {
    try {
      fetchOutletDetailObserver.value = ApiResult.loading("loading");
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
          fetchOutletDetailObserver.value = ApiResult.success(data);
        } else {
          Get.showCustomSnackBar(title: 'Failed', message: data.message ?? '');
          fetchOutletDetailObserver.value = ApiResult.error(data.message ?? "");
        }
      } else {
        fetchOutletDetailObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      fetchOutletDetailObserver.value = ApiResult.error(e.toString());
      Get.showCustomSnackBar(title: 'Error', message:  e.toString());
    }
  }
}