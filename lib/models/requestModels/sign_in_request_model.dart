import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_request_model.freezed.dart';
part 'sign_in_request_model.g.dart';

@freezed
abstract class SignInRequestModel with _$SignInRequestModel {
  const factory SignInRequestModel({
    String? key,
    String? password,
    String? version,
    dynamic deviceDetails
  }) = _SignInRequestModel;

  factory SignInRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestModelFromJson(json);
}
