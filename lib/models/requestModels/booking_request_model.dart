import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_request_model.freezed.dart';
part 'booking_request_model.g.dart';

@freezed
abstract class BookingRequestModel with _$BookingRequestModel {
  const factory BookingRequestModel({
    String? outletId,
    String? tableId,
    String? seatId,
    String? checkIn,
    String? checkOut,
    String? paymentType,
    String? bookingType,
    List<Map<String, dynamic>>? guestDetailsList,
    String? couponId,
    Map<String, dynamic>? paymentDetails,
    String? orderId,
    String? paymentId,
  }) = _BookingRequestModel;

  factory BookingRequestModel.fromJson(Map<String, dynamic> json) =>
      _$BookingRequestModelFromJson(json);
}
