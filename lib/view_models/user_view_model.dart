import 'package:bayitouser/models/responseModels/outlet_response_model.dart';
import 'package:bayitouser/models/responseModels/user_response_model.dart';
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


class UserViewModel extends GetxController {
  final apiProvider = Get.put(ApiProvider());
  final preferenceManager = Get.put(PreferenceManager());

  final fetchUsersObserver = PaginationModel(
    data: ApiResult<UsersListResponseModel>.init().obs,
    isLoading: false,
    isPaginationCompleted: false,
    page: 1,
    error: "",
  ).obs;

  final fetchUserDetailObserver = ApiResult<OutletDetailsResponseModel>.init().obs;


  Future<void> fetchUsers(PaginationRequestModel request, bool refresh,) async {

    final observer = fetchUsersObserver;
    const endPoint = EndPoints.fetchUsers;

    try {

      if (refresh) {
        observer.value = PaginationModel(
          data: ApiResult<UsersListResponseModel>.init().obs,
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
      print("User body:$body");
      if (response.isOk && body != null) {
        final responseData = UsersListResponseModel.fromJson(body);
        if (responseData.status == 1) {
          observer.value.data.value = ApiResult.success(responseData);
          observer.value.page++;
          if ((responseData.data?.length ?? 0) <
              maxListApiReturns) {
            observer.value.isPaginationCompleted = true;
          }
          observer.value.isLoading = false;
          observer.refresh();
          return;
        }
        throw responseData.message ?? "Unable to fetch outlets";
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
      observer.value.data.value = ApiResult.error(e.toString());
      observer.value.isLoading = false;
      observer.refresh();
    }
  }

  Future<void> fetchUserDetails(String userId) async {
    try {
      fetchUserDetailObserver.value = ApiResult.loading("loading");
      final response = await apiProvider.post(
        EndPoints.fetchUserDetails,
        {
          "userId": userId,
        },
      );
      final body = response.body;
      print("Outlet Details Response: $body");
      if (response.isOk && body != null) {
        final data = OutletDetailsResponseModel.fromJson(body);
        if (data.status == 1) {
          fetchUserDetailObserver.value = ApiResult.success(data);
        } else {
          Get.showCustomSnackBar(title: 'Failed', message: data.message ?? '');
          fetchUserDetailObserver.value = ApiResult.error(data.message ?? "");
        }
      } else {
        fetchUserDetailObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      fetchUserDetailObserver.value = ApiResult.error(e.toString());
      Get.showCustomSnackBar(title: 'Error', message:  e.toString());
    }
  }
}

