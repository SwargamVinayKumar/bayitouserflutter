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

@freezed
abstract class OutletDetailsResponseModel with _$OutletDetailsResponseModel {
  const factory OutletDetailsResponseModel({
    int? status,
    String? message,
    OutletData? data,
  }) = _OutletDetailsResponseModel;

  factory OutletDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OutletDetailsResponseModelFromJson(json);
}

@freezed
abstract class OutletData with _$OutletData {
  const factory OutletData({
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
    List<OutletTable>? tables,
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
    Location? location,
    DeviceDetails? deviceDetails,
  }) = _OutletData;

  factory OutletData.fromJson(Map<String, dynamic> json) =>
      _$OutletDataFromJson(json);
}

@freezed
abstract class OutletTable with _$OutletTable {
  const factory OutletTable({
    @JsonKey(name: "_id") String? id,
    String? outletId,
    String? tableNumber,
    String? description,
    String? seatType,
    List<String>? images,
    bool? available,
    int? seatCapacity,
    List<Seat>? seats,
    String? createdAt,
    String? updatedAt,
  }) = _OutletTable;

  factory OutletTable.fromJson(Map<String, dynamic> json) =>
      _$OutletTableFromJson(json);
}

@freezed
abstract class Seat with _$Seat {
  const factory Seat({
    String? seatNumber,
    String? seatType,
    List<String>? images,
    bool? available,
    Charges? charges,
    @JsonKey(name: "_id") String? id,
    String? createdAt,
    String? updatedAt,
  }) = _Seat;

  factory Seat.fromJson(Map<String, dynamic> json) =>
      _$SeatFromJson(json);
}

@freezed
abstract class Charges with _$Charges {
  const factory Charges({
    int? perHour,
    @JsonKey(name: "_id") String? id,
    String? createdAt,
    String? updatedAt,
  }) = _Charges;

  factory Charges.fromJson(Map<String, dynamic> json) =>
      _$ChargesFromJson(json);
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
abstract class Location with _$Location {
  const factory Location({
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? landMark,
    int? pinCode,
    double? latitude,
    double? longitude,
    List<dynamic>? coordinates,
    @JsonKey(name: "_id") String? id,
    String? createdAt,
    String? updatedAt,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
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