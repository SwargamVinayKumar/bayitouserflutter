import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request_model.freezed.dart';
part 'auth_request_model.g.dart';


@freezed
abstract class ValidateVersionRequestModel with _$ValidateVersionRequestModel{
  const factory ValidateVersionRequestModel({
    required String? version,
  }) = _ValidateVersionRequestModel;

  factory ValidateVersionRequestModel.fromJson(Map<String, dynamic> json) => _$ValidateVersionRequestModelFromJson(json);
}

@freezed
abstract class RegisterUserRequestModel with _$RegisterUserRequestModel {
  const factory RegisterUserRequestModel({
    List<String>? designations,
    RegisterChargesRequestModel? charges,
    String? name,
    String? dob,
    String? gender,
    RegisterLocationRequestModel? location,
    String? referralCode,
  }) = _RegisterUserRequestModel;

  factory RegisterUserRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserRequestModelFromJson(json);
}

@freezed
abstract class RegisterChargesRequestModel with _$RegisterChargesRequestModel {
  const factory RegisterChargesRequestModel({
    int? perHour,
  }) = _RegisterChargesRequestModel;

  factory RegisterChargesRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterChargesRequestModelFromJson(json);
}

@freezed
abstract class RegisterLocationRequestModel with _$RegisterLocationRequestModel {
  const factory RegisterLocationRequestModel({
    String? address1,
    String? address2,
    String? landMark,
    String? city,
    String? state,
    int? pinCode,
    double? latitude,
    double? longitude,
  }) = _RegisterLocationRequestModel;

  factory RegisterLocationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterLocationRequestModelFromJson(json);
}
