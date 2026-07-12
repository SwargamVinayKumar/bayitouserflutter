import 'package:freezed_annotation/freezed_annotation.dart';

import '../response_model/auth_response_model.dart';
import '../response_model/home_response_model.dart';
import 'auth_request_model.dart';



part 'home_request_model.freezed.dart';
part 'home_request_model.g.dart';



@Freezed()
class RegistrationHomeRequestModel with _$RegistrationHomeRequestModel{
  const factory RegistrationHomeRequestModel({
    String? homeId,
    String? mobile,
    String? name,
    String? email,
    String? homeImage,
    String? homeType,
    String? homeLicence,
    String? homeName,
    String? aboutHome,
    List<ImageDataModel>? images,
    List<String>? amenities,
    List<String>? rules,
    List<FaqModel>? faq,
    String? checkInTime,
    String? checkOutTime,
    String? gstIn,
    LocationModel? location,
    List<DocumentDataModel>? kycDocuments
  }) = _RegistrationHomeRequestModel;

  factory RegistrationHomeRequestModel.fromJson(Map<String, dynamic> json) => _$RegistrationHomeRequestModelFromJson(json);
}


@Freezed()
class RegistrationPgRequestModel with _$RegistrationPgRequestModel{
  const factory RegistrationPgRequestModel({
    String? pgId,
    String? mobile,
    String? name,
    String? email,
    String? pgImage,
    String? pgType,
    String? pgLicence,
    String? pgName,
    String? aboutPg,
    List<ImageDataModel>? images,
    List<String>? amenities,
    List<String>? rules,
    List<FaqModel>? faq,
    String? checkInTime,
    String? checkOutTime,
    String? gstIn,
    LocationModel? location,
    List<DocumentDataModel>? kycDocuments
  }) = _RegistrationPgRequestModel;

  factory RegistrationPgRequestModel.fromJson(Map<String, dynamic> json) => _$RegistrationPgRequestModelFromJson(json);
}

@Freezed()
class ListUnitRequestModel with _$ListUnitRequestModel{
  const factory ListUnitRequestModel({
    required String? unitId,
    required String? homeId,
    required String? image,
    required String? unitNo,
    required int? floor,
    required List<String>? specialAmenities,
    required int? capacityCount,
    required String? unitType,
    required RentModel? rent,
  }) = _ListUnitRequestModel;

  factory ListUnitRequestModel.fromJson(Map<String, dynamic> json) => _$ListUnitRequestModelFromJson(json);
}