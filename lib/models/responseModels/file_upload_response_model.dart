import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_upload_response_model.freezed.dart';
part 'file_upload_response_model.g.dart';

@freezed
abstract class FileUploadResponseModel with _$FileUploadResponseModel {
  const factory FileUploadResponseModel({
    int? status,
    String? message,
    FileUploadData? data,
  }) = _FileUploadResponseModel;

  factory FileUploadResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResponseModelFromJson(json);
}

@freezed
abstract class FileUploadData with _$FileUploadData {
  const factory FileUploadData({
    String? imageUrl,
  }) = _FileUploadData;

  factory FileUploadData.fromJson(Map<String, dynamic> json) =>
      _$FileUploadDataFromJson(json);
}
