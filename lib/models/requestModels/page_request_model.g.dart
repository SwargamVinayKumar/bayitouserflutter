// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationRequestModelImpl _$$PaginationRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationRequestModelImpl(
      bookingType: json['bookingType'] as String?,
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      query: json['query'] as String?,
      type: json['type'] as String?,
      outletId: json['outletId'] as String?,
      tableId: json['tableId'] as String?,
      longitude: json['longitude'],
      latitude: json['latitude'],
    );

Map<String, dynamic> _$$PaginationRequestModelImplToJson(
        _$PaginationRequestModelImpl instance) =>
    <String, dynamic>{
      'bookingType': instance.bookingType,
      'page': instance.page,
      'limit': instance.limit,
      'query': instance.query,
      'type': instance.type,
      'outletId': instance.outletId,
      'tableId': instance.tableId,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
