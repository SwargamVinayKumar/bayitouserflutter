// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingAvailabilityResponseImpl _$$BookingAvailabilityResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingAvailabilityResponseImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      code: json['code'] as String?,
      data: json['data'] == null
          ? null
          : BookingAvailabilityData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingAvailabilityResponseImplToJson(
        _$BookingAvailabilityResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$BookingAvailabilityDataImpl _$$BookingAvailabilityDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingAvailabilityDataImpl(
      available: json['available'] as bool?,
      bookingDetails: json['bookingDetails'] == null
          ? null
          : AvailabilityBookingDetails.fromJson(
              json['bookingDetails'] as Map<String, dynamic>),
      conflicts: (json['conflicts'] as List<dynamic>?)
          ?.map((e) => BookingConflict.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookingAvailabilityDataImplToJson(
        _$BookingAvailabilityDataImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'bookingDetails': instance.bookingDetails,
      'conflicts': instance.conflicts,
    };

_$AvailabilityBookingDetailsImpl _$$AvailabilityBookingDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityBookingDetailsImpl(
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
      duration: json['duration'] as int?,
      perHourCharge: json['perHourCharge'] as int?,
      subTotal: json['subTotal'] as int?,
      totalAmount: json['totalAmount'] as int?,
      maxAdvanceBooking: json['maxAdvanceBooking'] as String?,
    );

Map<String, dynamic> _$$AvailabilityBookingDetailsImplToJson(
        _$AvailabilityBookingDetailsImpl instance) =>
    <String, dynamic>{
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
      'duration': instance.duration,
      'perHourCharge': instance.perHourCharge,
      'subTotal': instance.subTotal,
      'totalAmount': instance.totalAmount,
      'maxAdvanceBooking': instance.maxAdvanceBooking,
    };

_$BookingConflictImpl _$$BookingConflictImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingConflictImpl(
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
      bookingId: json['bookingId'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$BookingConflictImplToJson(
        _$BookingConflictImpl instance) =>
    <String, dynamic>{
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
      'bookingId': instance.bookingId,
      'status': instance.status,
    };

_$ConfirmBookingResponseImpl _$$ConfirmBookingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmBookingResponseImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ConfirmBookingData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConfirmBookingResponseImplToJson(
        _$ConfirmBookingResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ConfirmBookingDataImpl _$$ConfirmBookingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmBookingDataImpl(
      bookingId: json['bookingId'] as String?,
      userId: json['userId'] as String?,
      outletId: json['outletId'] as String?,
      tableId: json['tableId'] as String?,
      seatId: json['seatId'] as String?,
      bookingOTP: json['bookingOTP'] as int?,
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
      duration: json['duration'] as int?,
      subTotal: json['subTotal'] as int?,
      discount: json['discount'] as int?,
      amount: json['amount'] as int?,
      bookingType: json['bookingType'] as String?,
      paymentType: json['paymentType'] as String?,
      status: json['status'] as String?,
      paymentLink: json['paymentLink'] as String?,
    );

Map<String, dynamic> _$$ConfirmBookingDataImplToJson(
        _$ConfirmBookingDataImpl instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'userId': instance.userId,
      'outletId': instance.outletId,
      'tableId': instance.tableId,
      'seatId': instance.seatId,
      'bookingOTP': instance.bookingOTP,
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
      'duration': instance.duration,
      'subTotal': instance.subTotal,
      'discount': instance.discount,
      'amount': instance.amount,
      'bookingType': instance.bookingType,
      'paymentType': instance.paymentType,
      'status': instance.status,
      'paymentLink': instance.paymentLink,
    };
