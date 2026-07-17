
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/api_provider.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';

import '../models/request_model/auth_request_model.dart';
import '../models/request_model/bookings_request_model.dart';
import '../models/response_model/auth_response_model.dart';
import '../models/response_model/bookings_response_model.dart';
import '../models/response_model/home_response_model.dart';
import '../utils/ConfigKeys.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_color.dart';
import '../utils/preference_manager.dart';
import 'home_view_model.dart';


import 'package:razorpay_flutter/razorpay_flutter.dart';
//import 'package:razorpay_web/razorpay_web.dart';


class BookingViewModel extends GetxController {
  final apiProvider = Get.put(ApiProvider());
  final preferenceManager = Get.put(PreferenceManager());
  final homeViewModel = Get.put(HomeViewModel());
  final Razorpay razorpay = Razorpay();

  Rx<BookingRequestModel?> bookingRequestModelObserver =
      Rx<BookingRequestModel?>(null);

  final checkAvailabilityDatesObserver = ApiResult<HomeUnitAvailabilityDatesResponseModel>.init().obs;

  final checkHomeUnitAvailabilityObserver = ApiResult<HomeUnitAvailabilityResponseModel>.init().obs;
  final confirmBookingObserver = ApiResult<ConfirmBookingResponseModel>.init().obs;
  final updateBookingStatusObserver = ApiResult<ConfirmBookingResponseModel>.init().obs;

  final cancelBookingStatusObserver = ApiResult<ConfirmBookingResponseModel>.init().obs;

  final fetchSearchedBookingsObserver = PaginationModel(
          data:  ApiResult<FetchBookingsResponseModel>.init().obs,
          isLoading: false,
          isPaginationCompleted: false,
          page: 1,
          error: "")
      .obs;

  final fetchAllBookingsObserver = PaginationModel(
          data:  ApiResult<FetchBookingsResponseModel>.init().obs,
          isLoading: false,
          isPaginationCompleted: false,
          page: 1,
          error: "")
      .obs;

  final fetchOngoingBookingsObserver = PaginationModel(
          data:  ApiResult<FetchBookingsResponseModel>.init().obs,
          isLoading: false,
          isPaginationCompleted: false,
          page: 1,
          error: "")
      .obs;

  final fetchUpComingBookingsObserver = PaginationModel(
          data:  ApiResult<FetchBookingsResponseModel>.init().obs,
          isLoading: false,
          isPaginationCompleted: false,
          page: 1,
          error: "")
      .obs;

  final fetchPastBookingsObserver = PaginationModel(
          data:  ApiResult<FetchBookingsResponseModel>.init().obs,
          isLoading: false,
          isPaginationCompleted: false,
          page: 1,
          error: "")
      .obs;

  final fetchCancelledBookingsObserver = PaginationModel(
          data:  ApiResult<FetchBookingsResponseModel>.init().obs,
          isLoading: false,
          isPaginationCompleted: false,
          page: 1,
          error: "")
      .obs;

  final fetchBookingDetailsObserver =  ApiResult<FetchBookingDetailsResponseModel>.init().obs;

  RxList<GuestDetailsModel> guestDetailsList = <GuestDetailsModel>[].obs;
  Rx<CouponDataModel?> selectedCoupon = Rx<CouponDataModel?>(null);
  RxBool userWalletBalance = false.obs;

  void setupRazorpayWebCallbacks({
    required Function(String paymentId) onSuccess,
    required Function(String error) onFailed,
  }) {
  }





  Future<void> performConfirmBooking(BookingRequestModel? request, bool user, BuildContext context) async {
    try {
      if (request == null) throw "Invalid Booking Request";
      razorpay.clear();
      final newRequest = request.copyWith(couponId: selectedCoupon.value?.id ?? "", useWalletBalance: userWalletBalance.value);
      confirmBookingObserver.value = ApiResult.loading("");

      final response = await apiProvider.post(EndPoints.confirmBooking, newRequest.toJson());

      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = ConfirmBookingResponseModel.fromJson(body);

        if (user == true) {
          if (responseData.status == 1) {

            var options = {
              'key': ConfigKeys.razorPayId,
              'order_id': responseData.data?.bookingResponse?.orderId ?? "",
              'name': 'HopNHost',
              'description': 'Booking Home Unit',
              'prefill': {
                'contact':
                UserModel.fromJson(responseData.data?.bookingResponse?.userId)
                    .mobile,
                'email':
                UserModel.fromJson(responseData.data?.bookingResponse?.userId)
                    .email
              }
            };

            razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, (response) async {
              await updateOrderPaymentStatus(responseData.data?.bookingResponse?.id ?? "",response.paymentId ?? "");
            });
            razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, (razorPayResponse) {
              confirmBookingObserver.value = ApiResult.error(
                  razorPayResponse.message?.replaceAll(
                          "undefined", "Payment Aborted. Please try again") ??
                      "");
            });
            razorpay.open(options);
            // placeOrderObserver.value = ApiResult.success(responseData);
            return;
          }
          else if (responseData.status == 2) {
            confirmBookingObserver.value = ApiResult.success(responseData);
            await updateOrderPaymentStatus(responseData.data?.bookingResponse?.id ?? "","");
            return;
          }
        } else {
          guestDetailsList.clear();
          if (responseData.status == 1) {
            confirmBookingObserver.value = ApiResult.success(responseData);
            // Get.to(() => BookingDetailsPage(
            //     bookingId: responseData.data?.bookingResponse?.id ?? "",
            //     fromBooking: true));
            return;
          }
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          backgroundColor: CustomColors.primary,
          colorText: CustomColors.white,
          snackPosition: SnackPosition.BOTTOM);
      confirmBookingObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> updateOrderPaymentStatus(String? bookingId,String paymentId) async {
    try {
      updateBookingStatusObserver.value = ApiResult.loading("");
      final response = await apiProvider
          .post(EndPoints.updateBookingStatus, {"bookingId": bookingId,"paymentId":paymentId});
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = ConfirmBookingResponseModel.fromJson(body);
        if (responseData.status == 1) {
          guestDetailsList.clear();
          bookingRequestModelObserver.value = null;
          // Get.to(() => BookingConfirmedPage(bookingId: bookingId ?? ""));
          updateBookingStatusObserver.value = ApiResult.success(responseData);
          confirmBookingObserver.value = ApiResult.success(responseData);
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    } catch (e) {
      razorpay.clear();
      Get.snackbar("Error", e.toString(),
          backgroundColor: CustomColors.primary,
          colorText: CustomColors.white,
          snackPosition: SnackPosition.BOTTOM);
      updateBookingStatusObserver.value = ApiResult.error("Unable to Start Booking");
      confirmBookingObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> performCancelBooking(String? bookingId) async {
    try {
      cancelBookingStatusObserver.value = ApiResult.loading("");
      final response = await apiProvider
          .post(EndPoints.cancelBooking, {"bookingId": bookingId});
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = ConfirmBookingResponseModel.fromJson(body);
        if (responseData.status == 1) {
          Get.snackbar("Success",
              "Booking Cancelled Successfully.Your Amount Refund Back To Your Account In 7 Working Days",
              backgroundColor: CustomColors.primary,
              colorText: CustomColors.white,
              snackPosition: SnackPosition.BOTTOM);
          fetchBookingDetails(bookingId ?? "");
          cancelBookingStatusObserver.value = ApiResult.success(responseData);
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
      cancelBookingStatusObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> fetchBookings(PaginationRequestModel request, bool refresh) async {
    final observer = (request.searchQuery ?? "").trim().isNotEmpty
        ? fetchSearchedBookingsObserver
        : request.query == "Ongoing"
            ? fetchOngoingBookingsObserver
            : request.query == "Upcoming"
                ? fetchUpComingBookingsObserver
                : request.query == "Past"
                    ? fetchPastBookingsObserver
                    : request.query == "Cancelled"
                        ? fetchCancelledBookingsObserver
                        : fetchAllBookingsObserver;
    try {
      if (refresh == true) {
        observer.value = PaginationModel(
            data:  ApiResult<FetchBookingsResponseModel>.init().obs,
            isLoading: false,
            isPaginationCompleted: false,
            page: 1,
            error: "");
      }

      if (observer.value.isPaginationCompleted ||
          observer.value.isLoading == true) return;

      if (observer.value.page == 1) {
        observer.value.data.value =  ApiResult.loading("");
      } else {
        observer.value.isLoading = true;
        observer.refresh();
      }

      const maxListApiReturns = 20;
      observer.refresh();

      final String? validatorResponse =
          AuthUtils.validateRequestFields(['page'], request.toJson());
      if (validatorResponse != null) throw validatorResponse;

      final response = await apiProvider.post(EndPoints.fetchBookings, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = FetchBookingsResponseModel.fromJson(body);
        if (responseData.status == 1) {
          observer.value.data.value.maybeWhen(success: (data) {
            final oldList =
                (data as FetchBookingsResponseModel?)?.data?.toList();
            oldList?.addAll(responseData.data ?? List.empty());
            observer.value.data.value =
                ApiResult.success(responseData.copyWith(data: oldList));
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
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          backgroundColor: CustomColors.primary,
          colorText: CustomColors.white,
          snackPosition: SnackPosition.BOTTOM);
      observer.value.data.value = ApiResult.error(e.toString());
      observer.value.isLoading = false;
      observer.refresh();
    }
  }

  Future<void> fetchBookingDetails(String bookingId) async {
    try {
      fetchBookingDetailsObserver.value =  ApiResult.loading("");
      final response = await apiProvider
          .post(EndPoints.fetchBookingDetails, {"bookingId": bookingId});
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = FetchBookingDetailsResponseModel.fromJson(body);
        if (responseData.status == 1) {
          fetchBookingDetailsObserver.value = ApiResult.success(responseData);
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    } catch (e) {
      print(e.toString());
      Get.snackbar("Error", e.toString(),
          backgroundColor: CustomColors.primary,
          colorText: CustomColors.white,
          snackPosition: SnackPosition.BOTTOM);
      fetchBookingDetailsObserver.value = ApiResult.error(e.toString());
    }
  }
}
