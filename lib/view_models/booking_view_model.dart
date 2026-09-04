import 'package:bayitouser/api/api_provider.dart';
import 'package:bayitouser/api/api_result.dart';
import 'package:bayitouser/api/end_points.dart';
import 'package:bayitouser/models/requestModels/booking_request_model.dart';
import 'package:bayitouser/models/responseModels/booking_response_model.dart';
import 'package:bayitouser/models/responseModels/table_response_model.dart';
import 'package:bayitouser/utils/snack_bar_extension.dart';
import 'package:get/get.dart';

class BookingViewModel extends GetxController {
  final apiProvider = Get.find<ApiProvider>();

  final checkAvailabilityObserver = ApiResult<BookingAvailabilityResponse>.init().obs;
  final confirmBookingObserver = ApiResult<ConfirmBookingResponse>.init().obs;
  final fetchTablesObserver = ApiResult<FetchTablesResponse>.init().obs;

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
        checkAvailabilityObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      checkAvailabilityObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> confirmBooking(String outletId) async {
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
        paymentType: "cash", // Default for now
        bookingType: "classic",
      );

      final response = await apiProvider.post(EndPoints.confirmBooking, request.toJson());
      
      if (response.isOk && response.body != null) {
        final data = ConfirmBookingResponse.fromJson(response.body);
        if (data.status == 1) {
          confirmBookingObserver.value = ApiResult.success(data);
          Get.showCustomSnackBar(title: "Success", message: "Booking confirmed successfully!");
          Get.back(); // Go back to details page
        } else {
          confirmBookingObserver.value = ApiResult.error(data.message ?? "Failed to confirm");
          Get.showCustomSnackBar(title: "Failed", message: data.message ?? "Booking failed");
        }
      } else {
        confirmBookingObserver.value = ApiResult.error("Something went wrong");
      }
    } catch (e) {
      confirmBookingObserver.value = ApiResult.error(e.toString());
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
