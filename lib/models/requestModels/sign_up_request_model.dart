import 'package:freezed_annotation/freezed_annotation.dart';

import '../responseModels/auth_response_model.dart';

part 'sign_up_request_model.freezed.dart';
part 'sign_up_request_model.g.dart';

@freezed
abstract class SignUpRequestModel with _$SignUpRequestModel {
  const factory SignUpRequestModel({
    int? mobile,
    String? name,
    String? email,
    String? password,
    String? confirmPassword,
    String? profilePic,
    int? otp,
    @Default([]) List<String>? designations,
    ChargesModel? businessLicence,
    LocationModel? location
  }) = _SignUpRequestModel;

  factory SignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestModelFromJson(json);
}


