import 'package:bayitouser/models/responseModels/page_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_response_model.dart';

part 'outlet_response_model.freezed.dart';
part 'outlet_response_model.g.dart';

@freezed
abstract class FetchOutletsResponse with _$FetchOutletsResponse {
  const factory FetchOutletsResponse({
    int? status,
    String? message,
    FetchOutletsDataModel? data,
  }) = _FetchOutletsResponse;

  factory FetchOutletsResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchOutletsResponseFromJson(json);
}

@freezed
abstract class FetchOutletsDataModel with _$FetchOutletsDataModel {
  const factory FetchOutletsDataModel({
    List<OutletModel>? data,
  }) = _FetchOutletsDataModel;

  factory FetchOutletsDataModel.fromJson(Map<String, dynamic> json) =>
      _$FetchOutletsDataModelFromJson(json);
}

@freezed
abstract class FetchOutletDetailsModel with _$FetchOutletDetailsModel {
  const factory FetchOutletDetailsModel({
    int? status,
    String? message,
    OutletModel? data,
  }) = _FetchOutletDetailsModel;

  factory FetchOutletDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$FetchOutletDetailsModelFromJson(json);
}

@freezed
abstract class OutletModel with _$OutletModel {
  const factory OutletModel({
    @JsonKey(name: '_id') String? id,
    String? outletType,
    int? mobile,
    String? name,
    String? email,
    String? businessLogo,
    String? businessLicence,
    String? businessName,
    String? aboutBusiness,
    String? gstIn,
    String? fssaiId,
    LocationModel? location,
  }) = _OutletModel;

  factory OutletModel.fromJson(Map<String, dynamic> json) =>
      _$OutletModelFromJson(json);
}