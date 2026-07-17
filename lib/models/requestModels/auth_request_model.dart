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
