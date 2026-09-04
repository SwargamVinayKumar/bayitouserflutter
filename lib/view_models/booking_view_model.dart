import 'package:bayitouser/api/api_provider.dart';
import 'package:bayitouser/api/api_result.dart';
import 'package:bayitouser/api/end_points.dart';
import 'package:bayitouser/models/requestModels/booking_request_model.dart';
import 'package:bayitouser/models/responseModels/booking_response_model.dart';
import 'package:bayitouser/models/responseModels/table_response_model.dart';
import 'package:bayitouser/utils/snack_bar_extension.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../models/responseModels/auth_response_model.dart';
import '../models/responseModels/user_response_model.dart';
import '../pages/booking_details_page.dart';
import '../utils/ConfigKeys.dart';

class BookingViewModel extends GetxController {
  final apiProvider = Get.find<ApiProvider>();
  final Razorpay razorpay = Razorpay();

  final checkAvailabilityObserver = ApiResult<BookingAvailabilityResponse>.init().obs;
  final confirmBookingObserver = ApiResult<ConfirmBookingResponse>.init().obs;
  final fetchTablesObserver = ApiResult<FetchTablesResponse>.init().obs;
  
  // Separate observers and lists for each tab
  final upcomingBookings = <BookingModel>[].obs;
  final completedBookings = <BookingModel>[].obs;
  final cancelledBookings = <BookingModel>[].obs;

  final upcomingObserver = ApiResult<BookingListResponse>.init().obs;
  final completedObserver = ApiResult<BookingListResponse>.init().obs;
  final cancelledObserver = ApiResult<BookingListResponse>.init().obs;

  final upcomingPage = 1.obs;
  final completedPage = 1.obs;
  final cancelledPage = 1.obs;

  final hasMoreUpcoming = true.obs;
  final hasMoreCompleted = true.obs;
  final hasMoreCancelled = true.obs;

  final fetchBookingDetailsObserver = ApiResult<BookingDetailsResponse>.init().obs;

  final selectedTable = Rxn<TableModel>();
  final selectedSeat = Rxn<SeatModel>();
  final selectedDate = DateTime.now().obs;
  final selectedTimeIndex = (0).obs;
  final durationHours = 1.obs;

  List<String> timeSlots = [
    "10:00 AM", "11:00 AM", "12:00 PM", "01:00 PM", "02:00 PM", "03:00 PM",
    "04:00 PM", "05:00 PM", "06:00 PM", "07:00 PM", "08:00 PM", "09:00 PM"
  ];

  void selectTable(TableModel table) {
    selectedTable.value = table;
    selectedSeat.value = null;
  }

  void selectSeat(SeatModel seat) {
    selectedSeat.value = seat;
  }

  Future<void> getTables(String outletId) async {
    try {
      fetchTablesObserver.value = ApiResult.loading("Loading tables...");
      final response = await apiProvider.post(EndPoints.getTables, {"outletId": outletId});
      
      if (response.isOk && response.body != null) {
        final data = FetchTablesResponse.fromJson(response.body);
        if (data.status == 1) {
          fetchTablesObserver.value = ApiResult.success(data);
        } else {
          fetchTablesObserver.value = ApiResult.error(data.message ?? "Failed to fetch tables");
        }
      } else {
        fetchTablesObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      fetchTablesObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> checkAvailability(String outletId) async {
    if (selectedTable.value == null || selectedSeat.value == null || selectedTimeIndex.value == -1) {
      Get.showCustomSnackBar(title: "Error", message: "Please select table, seat and time slot");
      return;
    }

    try {
      checkAvailabilityObserver.value = ApiResult.loading("Checking availability...");
      
      final checkIn = _getDateTimeFromSlot(selectedDate.value, timeSlots[selectedTimeIndex.value]);
      final checkOut = checkIn.add(Duration(hours: durationHours.value));

      final request = BookingRequestModel(
        outletId: outletId,
        tableId: selectedTable.value!.id,
        seatId: selectedSeat.value!.id,
        checkIn: checkIn.toIso8601String(),
        checkOut: checkOut.toIso8601String(),
      );

      final response = await apiProvider.post(EndPoints.checkAvailability, request.toJson());
      
      if (response.isOk && response.body != null) {
        final data = BookingAvailabilityResponse.fromJson(response.body);
        if (data.status == 1) {
          await Future.delayed(const Duration(milliseconds: 500));
          checkAvailabilityObserver.value = ApiResult.success(data);
        } else {
          checkAvailabilityObserver.value = ApiResult.error(data.message ?? "Not available");
          Get.showCustomSnackBar(title: "Unavailable", message: data.message ?? "Seat is not available for selected time");
        }
      } else {
        Get.showCustomSnackBar(title: "Unavailable", message:"Something went wrong");
        checkAvailabilityObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      Get.showCustomSnackBar(title: "Unavailable", message: e.toString());
      checkAvailabilityObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> confirmBooking(String outletId) async {
    razorpay.clear();
    if (checkAvailabilityObserver.value.maybeWhen(success: (data) => data.data?.available != true, orElse: () => true)) {
      Get.showCustomSnackBar(title: "Error", message: "Please check availability first");
      return;
    }

    try {
      confirmBookingObserver.value = ApiResult.loading("Confirming booking...");
      
      final checkIn = _getDateTimeFromSlot(selectedDate.value, timeSlots[selectedTimeIndex.value]);
      final checkOut = checkIn.add(Duration(hours: durationHours.value));

      final request = BookingRequestModel(
        outletId: outletId,
        tableId: selectedTable.value!.id,
        seatId: selectedSeat.value!.id,
        checkIn: checkIn.toIso8601String(),
        checkOut: checkOut.toIso8601String(),
        paymentType: "razorpay",
        bookingType: "classic",
      );

      final response = await apiProvider.post(EndPoints.confirmBooking, request.toJson());
      
      if (response.isOk && response.body != null) {
        final data = ConfirmBookingResponse.fromJson(response.body);
        if (data.status == 1) {
          var options = {
            'key': ConfigKeys.razorPayId,
            'order_id': data.data?.orderId ?? "",
            'name': 'Bayito',
            'description': 'Booking Home Unit',
            'prefill': {
              'contact': ProfileData.fromJson(data.data?.userId).mobile,
              'email': ProfileData.fromJson(data.data?.userId).email
            }
          };

          razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, (response) async {
            Get.to(() => BookingDetailsPage(bookingId: data.data?.bookingId ?? ""));
          });
          razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, (razorPayResponse) {
            confirmBookingObserver.value = ApiResult.error(
                razorPayResponse.message?.replaceAll(
                    "undefined", "Payment Aborted. Please try again") ??
                    "");
          });
          razorpay.open(options);

          confirmBookingObserver.value = ApiResult.success(data);
          Get.showCustomSnackBar(title: "Success", message: "Booking confirmed successfully!");
        } else {
          confirmBookingObserver.value = ApiResult.error(data.message ?? "Failed to confirm");
          Get.showCustomSnackBar(title: "Failed", message: data.message ?? "Booking failed");
        }
      } else {
        Get.showCustomSnackBar(title: "Failed", message: "Something went wrong");
        confirmBookingObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      Get.showCustomSnackBar(title: "Failed", message: e.toString() ?? "Booking failed");
      confirmBookingObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> fetchUserBookingsByTab(int tabIndex, {bool isRefresh = false}) async {
    String status = "confirmed";
    RxList<BookingModel> list;
    Rx<ApiResult<BookingListResponse>> observer;
    RxInt page;
    RxBool hasMore;

    if (tabIndex == 0) {
      status = "confirmed"; // Also includes pending_payment and checked-in on backend potentially
      list = upcomingBookings;
      observer = upcomingObserver;
      page = upcomingPage;
      hasMore = hasMoreUpcoming;
    } else if (tabIndex == 1) {
      status = "completed";
      list = completedBookings;
      observer = completedObserver;
      page = completedPage;
      hasMore = hasMoreCompleted;
    } else {
      status = "cancelled";
      list = cancelledBookings;
      observer = cancelledObserver;
      page = cancelledPage;
      hasMore = hasMoreCancelled;
    }

    try {
      if (isRefresh) {
        page.value = 1;
        list.clear();
        hasMore.value = true;
        observer.value = ApiResult.loading("Loading bookings...");
      }

      if (!hasMore.value) return;

      final response = await apiProvider.post(EndPoints.fetchUserBookings, {
        "page": page.value,
        "status": status
      });

      if (response.isOk && response.body != null) {
        final data = BookingListResponse.fromJson(response.body);
        if (data.status == 1) {
          final newBookings = data.data?.bookings ?? [];
          list.addAll(newBookings);
          
          if (newBookings.isEmpty || (data.data?.pagination?.currentPage ?? 1) >= (data.data?.pagination?.totalPages ?? 1)) {
            hasMore.value = false;
          } else {
            page.value++;
          }
          observer.value = ApiResult.success(data);
        } else {
          observer.value = ApiResult.error(data.message ?? "Failed to fetch bookings");
        }
      } else {
        observer.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      observer.value = ApiResult.error(e.toString());
    }
  }

  Future<void> fetchBookingDetails(String bookingId) async {
    try {
      fetchBookingDetailsObserver.value = ApiResult.loading("Loading details...");
      final response = await apiProvider.post(EndPoints.fetchUserBookingDetails, {"bookingId": bookingId});

      if (response.isOk && response.body != null) {
        final data = BookingDetailsResponse.fromJson(response.body);
        if (data.status == 1) {
          fetchBookingDetailsObserver.value = ApiResult.success(data);
        } else {
          fetchBookingDetailsObserver.value = ApiResult.error(data.message ?? "Failed to fetch details");
        }
      } else {
        fetchBookingDetailsObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      fetchBookingDetailsObserver.value = ApiResult.error(e.toString());
    }
  }

  DateTime _getDateTimeFromSlot(DateTime date, String slot) {
    final parts = slot.split(' ');
    final timeParts = parts[0].split(':');
    int hour = int.parse(timeParts[0]);
    int minute = int.parse(timeParts[1]);
    
    if (parts[1] == "PM" && hour < 12) hour += 12;
    if (parts[1] == "AM" && hour == 12) hour = 0;
    
    return DateTime(date.year, date.month, date.day, hour, minute);
  }
}
