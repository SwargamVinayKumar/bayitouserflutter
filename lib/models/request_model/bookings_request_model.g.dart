// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingRequestModelImpl _$$BookingRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingRequestModelImpl(
      unitModel: json['unitModel'] == null
          ? null
          : UnitModel.fromJson(json['unitModel'] as Map<String, dynamic>),
      homeId: json['homeId'] as String?,
      unitId: json['unitId'] as String?,
      couponId: json['couponId'] as String?,
      guestDetailsList: (json['guestDetailsList'] as List<dynamic>?)
          ?.map((e) => GuestDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkInDate: json['checkInDate'] == null
          ? null
          : DateTime.parse(json['checkInDate'] as String),
      checkOutDate: json['checkOutDate'] == null
          ? null
          : DateTime.parse(json['checkOutDate'] as String),
      guestCount: json['guestCount'] as int?,
      useWalletBalance: json['useWalletBalance'] as bool?,
    );

Map<String, dynamic> _$$BookingRequestModelImplToJson(
        _$BookingRequestModelImpl instance) =>
    <String, dynamic>{
      'unitModel': instance.unitModel,
      'homeId': instance.homeId,
      'unitId': instance.unitId,
      'couponId': instance.couponId,
      'guestDetailsList': instance.guestDetailsList,
      'checkInDate': instance.checkInDate?.toIso8601String(),
      'checkOutDate': instance.checkOutDate?.toIso8601String(),
      'guestCount': instance.guestCount,
      'useWalletBalance': instance.useWalletBalance,
    };

_$RatingReviewRequestModelImpl _$$RatingReviewRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RatingReviewRequestModelImpl(
      homeId: json['homeId'] as String?,
      ratedFor: json['ratedFor'] as String?,
      review: json['review'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RatingReviewRequestModelImplToJson(
        _$RatingReviewRequestModelImpl instance) =>
    <String, dynamic>{
      'homeId': instance.homeId,
      'ratedFor': instance.ratedFor,
      'review': instance.review,
      'rating': instance.rating,
    };
