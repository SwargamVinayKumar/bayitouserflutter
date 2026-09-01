import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@freezed
abstract class UsersListResponseModel with _$UsersListResponseModel {
  const factory UsersListResponseModel({
    int? status,
    String? message,
    List<UserModel>? data,
  }) = _UsersListResponseModel;

  factory UsersListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UsersListResponseModelFromJson(json);
}

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: "_id") String? id,
    String? profilePic,
    List<DesignationModel>? designations,
    UserLocationModel? location,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
abstract class DesignationModel with _$DesignationModel {
  const factory DesignationModel({
    @JsonKey(name: "_id") String? id,
    String? name,
    String? description,
    String? createdAt,
    String? updatedAt,
  }) = _DesignationModel;

  factory DesignationModel.fromJson(Map<String, dynamic> json) =>
      _$DesignationModelFromJson(json);
}

@freezed
abstract class UserLocationModel with _$UserLocationModel {
  const factory UserLocationModel({
    String? address1,
    String? address2,
  }) = _UserLocationModel;

  factory UserLocationModel.fromJson(Map<String, dynamic> json) =>
      _$UserLocationModelFromJson(json);
}