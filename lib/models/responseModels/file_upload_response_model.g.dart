// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_upload_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileUploadResponseModelImpl _$$FileUploadResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FileUploadResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : FileUploadData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FileUploadResponseModelImplToJson(
        _$FileUploadResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FileUploadDataImpl _$$FileUploadDataImplFromJson(Map<String, dynamic> json) =>
    _$FileUploadDataImpl(
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$FileUploadDataImplToJson(
        _$FileUploadDataImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
    };
