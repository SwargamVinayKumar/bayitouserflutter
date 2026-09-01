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
      query: json['query'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$PaginationRequestModelImplToJson(
        _$PaginationRequestModelImpl instance) =>
    <String, dynamic>{
      'bookingType': instance.bookingType,
      'page': instance.page,
      'query': instance.query,
      'type': instance.type,
    };
