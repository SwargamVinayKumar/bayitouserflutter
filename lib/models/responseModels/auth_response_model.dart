import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
abstract class ProfileResponseModel with _$ProfileResponseModel {
  const factory ProfileResponseModel({
    int? status,
    String? message,
    String? approvalStatus,
    ProfileData? data
  }) = _ProfileResponseModel;

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);
}

@freezed
abstract class SignInResponseModel with _$SignInResponseModel {
  const factory SignInResponseModel({
    int? status,
    String? message,
    SignInResponseDataModel? data,
  }) = _SignInResponseModel;

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseModelFromJson(json);
}

@freezed
abstract class SignInResponseDataModel with _$SignInResponseDataModel {
  const factory SignInResponseDataModel({
    String? token,
    String? page,
    String? approvalStatus,
    ProfileData? details
  }) = _SignInResponseDataModel;

  factory SignInResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDataModelFromJson(json);
}

@freezed
abstract class ProfileData with _$ProfileData {
  const factory ProfileData({
    @JsonKey(name: '_id') String? id,
    String? outletType,
    String? approvalStatus,
    String? reason,
    int? mobile,
    String? name,
    String? email,
    String? password,
    ChargesModel? charges,
    LocationModel? location,
    List<DesignationModel>? tables,
    String? createdAt,
    String? updatedAt,
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}

@freezed
abstract class LocationModel with _$LocationModel {
  const factory LocationModel({
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? landMark,
    int? pinCode,
    double? latitude,
    double? longitude,
    List<dynamic>? coordinates,
    @JsonKey(name: '_id') String? id,
    String? createdAt,
    String? updatedAt,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

@Freezed()
abstract class ValidateVersionResponseModel with _$ValidateVersionResponseModel{
  const factory ValidateVersionResponseModel({
    int? status,
    String? message,
    ValidateDataModel? data
  }) = _ValidateVersionResponseModel;

  factory ValidateVersionResponseModel.fromJson(Map<String, dynamic> json) => _$ValidateVersionResponseModelFromJson(json);
}

@Freezed()
abstract class ValidateDataModel with _$ValidateDataModel{
  const factory ValidateDataModel({
    bool? validVersion,
    bool? userBlocked,
    String? page,
    ProfileData? userData,
    List<String>? banners,
    List<String>? outletTypes
  }) = _ValidateDataModel;

  factory ValidateDataModel.fromJson(Map<String, dynamic> json) => _$ValidateDataModelFromJson(json);
}

@Freezed()
abstract class DesignationModel with _$DesignationModel{
  const factory DesignationModel({
    @JsonKey(name: '_id') String? id,
    String? imageUrl,
    String? name,
    String? description
  }) = _DesignationModel;

  factory DesignationModel.fromJson(Map<String, dynamic> json) => _$DesignationModelFromJson(json);
}

@Freezed()
abstract class DesignationResponseModel with _$DesignationResponseModel{
  const factory DesignationResponseModel({
    int? status,
    String? message,
    List<DesignationModel>? data
  }) = _DesignationResponseModel;

  factory DesignationResponseModel.fromJson(Map<String, dynamic> json) => _$DesignationResponseModelFromJson(json);
}

@Freezed()
abstract class ChargesModel with _$ChargesModel{
  const factory ChargesModel({
    int? perHour
  }) = _ChargesModel;

  factory ChargesModel.fromJson(Map<String, dynamic> json) => _$ChargesModelFromJson(json);
}


