// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_hour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpeningHoursResponseModelImpl _$$OpeningHoursResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpeningHoursResponseModelImpl(
      success: json['success'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OpeningHoursDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpeningHoursResponseModelImplToJson(
        _$OpeningHoursResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$OpeningHoursDataModelImpl _$$OpeningHoursDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpeningHoursDataModelImpl(
      outletId: json['outletId'] as String?,
      daySlots: (json['daySlots'] as List<dynamic>?)
          ?.map((e) => DaySlotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OpeningHoursDataModelImplToJson(
        _$OpeningHoursDataModelImpl instance) =>
    <String, dynamic>{
      'outletId': instance.outletId,
      'daySlots': instance.daySlots,
    };

_$DaySlotModelImpl _$$DaySlotModelImplFromJson(Map<String, dynamic> json) =>
    _$DaySlotModelImpl(
      day: json['day'] as String?,
      status: json['status'] as bool?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$$DaySlotModelImplToJson(_$DaySlotModelImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'status': instance.status,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
