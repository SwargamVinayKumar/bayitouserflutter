// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingRequestModelImpl _$$BookingRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingRequestModelImpl(
      outletId: json['outletId'] as String?,
      tableId: json['tableId'] as String?,
      seatId: json['seatId'] as String?,
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
      paymentType: json['paymentType'] as String?,
      bookingType: json['bookingType'] as String?,
      guestDetailsList: (json['guestDetailsList'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      couponId: json['couponId'] as String?,
      paymentDetails: json['paymentDetails'] as Map<String, dynamic>?,
      orderId: json['orderId'] as String?,
      paymentId: json['paymentId'] as String?,
    );

Map<String, dynamic> _$$BookingRequestModelImplToJson(
        _$BookingRequestModelImpl instance) =>
    <String, dynamic>{
      'outletId': instance.outletId,
      'tableId': instance.tableId,
      'seatId': instance.seatId,
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
      'paymentType': instance.paymentType,
      'bookingType': instance.bookingType,
      'guestDetailsList': instance.guestDetailsList,
      'couponId': instance.couponId,
      'paymentDetails': instance.paymentDetails,
      'orderId': instance.orderId,
      'paymentId': instance.paymentId,
    };
