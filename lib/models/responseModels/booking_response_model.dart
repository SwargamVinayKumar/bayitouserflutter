import 'package:freezed_annotation/freezed_annotation.dart';
import 'auth_response_model.dart';

part 'booking_response_model.freezed.dart';
part 'booking_response_model.g.dart';

@freezed
abstract class BookingAvailabilityResponse with _$BookingAvailabilityResponse {
  const factory BookingAvailabilityResponse({
    int? status,
    String? message,
    String? code,
    BookingAvailabilityData? data,
  }) = _BookingAvailabilityResponse;

  factory BookingAvailabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$BookingAvailabilityResponseFromJson(json);
}

@freezed
abstract class BookingAvailabilityData with _$BookingAvailabilityData {
  const factory BookingAvailabilityData({
    bool? available,
    AvailabilityBookingDetails? bookingDetails,
    List<BookingConflict>? conflicts,
  }) = _BookingAvailabilityData;

  factory BookingAvailabilityData.fromJson(Map<String, dynamic> json) =>
      _$BookingAvailabilityDataFromJson(json);
}

@freezed
abstract class AvailabilityBookingDetails with _$AvailabilityBookingDetails {
  const factory AvailabilityBookingDetails({
    String? checkIn,
    String? checkOut,
    int? duration,
    int? perHourCharge,
    int? subTotal,
    int? totalAmount,
    String? maxAdvanceBooking,
  }) = _AvailabilityBookingDetails;

  factory AvailabilityBookingDetails.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityBookingDetailsFromJson(json);
}

@freezed
abstract class BookingConflict with _$BookingConflict {
  const factory BookingConflict({
    String? checkIn,
    String? checkOut,
    String? bookingId,
    String? status,
  }) = _BookingConflict;

  factory BookingConflict.fromJson(Map<String, dynamic> json) =>
      _$BookingConflictFromJson(json);
}

@freezed
abstract class ConfirmBookingResponse with _$ConfirmBookingResponse {
  const factory ConfirmBookingResponse({
    int? status,
    String? message,
    ConfirmBookingData? data,
  }) = _ConfirmBookingResponse;

  factory ConfirmBookingResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmBookingResponseFromJson(json);
}

@freezed
abstract class ConfirmBookingData with _$ConfirmBookingData {
  const factory ConfirmBookingData({
    String? bookingId,
    String? userId,
    String? outletId,
    String? tableId,
    String? seatId,
    int? bookingOTP,
    String? checkIn,
    String? checkOut,
    int? duration,
    int? subTotal,
    int? discount,
    int? amount,
    String? bookingType,
    String? paymentType,
    String? status,
    String? paymentLink,
  }) = _ConfirmBookingData;

  factory ConfirmBookingData.fromJson(Map<String, dynamic> json) =>
      _$ConfirmBookingDataFromJson(json);
}
