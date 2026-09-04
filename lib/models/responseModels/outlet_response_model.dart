import 'package:bayitouser/models/responseModels/table_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_response_model.dart';

part 'outlet_response_model.freezed.dart';
part 'outlet_response_model.g.dart';

@freezed
abstract class FetchOutletsResponse with _$FetchOutletsResponse {
  const factory FetchOutletsResponse({
    int? status,
    String? message,
    List<OutletModel>? data,
  }) = _FetchOutletsResponse;

  factory FetchOutletsResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchOutletsResponseFromJson(json);
}

@freezed
abstract class OutletModel with _$OutletModel {
  const factory OutletModel({
    @JsonKey(name: "_id") String? id,
    String? outletType,
    String? approvalStatus,
    String? reason,
    String? profilePic,
    int? mobile,
    int? otp,
    String? name,
    String? email,
    List<String>? images,
    List<TableModel>? tables,
    bool? blocked,
    String? version,
    List<DaySlot>? daySlots,
    String? createdAt,
    String? updatedAt,
    String? aboutBusiness,
    String? businessLicence,
    String? businessLogo,
    String? businessName,
    String? fssaiId,
    String? gstIn,
    LocationModel? location,
    DeviceDetails? deviceDetails,
  }) = _OutletModel;

  factory OutletModel.fromJson(Map<String, dynamic> json) =>
      _$OutletModelFromJson(json);
}

@freezed
abstract class OutletDetailsResponseModel with _$OutletDetailsResponseModel {
  const factory OutletDetailsResponseModel({
    int? status,
    String? message,
    OutletModel? data,
  }) = _OutletDetailsResponseModel;

  factory OutletDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OutletDetailsResponseModelFromJson(json);
}




@freezed
abstract class DaySlot with _$DaySlot {
  const factory DaySlot({
    String? day,
    bool? status,
    int? startTime,
    int? endTime,
    @JsonKey(name: "_id") String? id,
    String? createdAt,
    String? updatedAt,
  }) = _DaySlot;

  factory DaySlot.fromJson(Map<String, dynamic> json) =>
      _$DaySlotFromJson(json);
}

@freezed
abstract class DeviceDetails with _$DeviceDetails {
  const factory DeviceDetails({
    String? source,
    String? imei,
    String? deviceVersion,
    String? deviceId,
  }) = _DeviceDetails;

  factory DeviceDetails.fromJson(Map<String, dynamic> json) =>
      _$DeviceDetailsFromJson(json);
}