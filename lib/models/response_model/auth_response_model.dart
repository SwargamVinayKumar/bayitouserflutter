
import 'package:freezed_annotation/freezed_annotation.dart';

import '../request_model/auth_request_model.dart';
import 'home_response_model.dart';


part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

class PaginationModel<T>{
  T data;
  bool isLoading;
  bool isPaginationCompleted;
  int page;
  String error;

  PaginationModel({
    required this.data,
    required this.isLoading,
    required this.isPaginationCompleted,
    required this.page,
    required this.error
  });
}

class GetImagesTypeModel<T>{
  T data;
  bool isLoading;


  GetImagesTypeModel({
    required this.data,
    required this.isLoading
  });
}

class OnBoardingDataModel<T>{
  String image;
  String title;
  String message;

  OnBoardingDataModel({
    required this.image,
    required this.title,
    required this.message
  });
}



@Freezed()
class ValidateVersionResponseModel with _$ValidateVersionResponseModel{
  const factory ValidateVersionResponseModel({
    int? status,
    String? message,
    ValidateDataModel? data
  }) = _ValidateVersionResponseModel;

  factory ValidateVersionResponseModel.fromJson(Map<String, dynamic> json) => _$ValidateVersionResponseModelFromJson(json);
}

@Freezed()
class ValidateDataModel with _$ValidateDataModel{
  const factory ValidateDataModel({
    bool? validVersion,
    bool? userBlocked,
    String? page,
    UserModel? userData,
    List<String>? banners,
    List<String>? filterLocations,
    List<String>? unitType
  }) = _ValidateDataModel;

  factory ValidateDataModel.fromJson(Map<String, dynamic> json) => _$ValidateDataModelFromJson(json);
}



@Freezed()
class PrimaryResponseModel with _$PrimaryResponseModel{
  const factory PrimaryResponseModel({
    int? status,
    String? message
  }) = _PrimaryResponseModel;

  factory PrimaryResponseModel.fromJson(Map<String, dynamic> json) => _$PrimaryResponseModelFromJson(json);
}


@Freezed()
class VerifyOtpResponseModel with _$VerifyOtpResponseModel{
  const factory VerifyOtpResponseModel({
    int? status,
    String? message,
    VerifyOtpDataModel? data
  }) = _VerifyOtpResponseModel;

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) => _$VerifyOtpResponseModelFromJson(json);
}

@Freezed()
class ContactDetailsResponseModel with _$ContactDetailsResponseModel{
  const factory ContactDetailsResponseModel({
    int? status,
    String? message,
    List<ContactDetailsDataModel>? data
  }) = _ContactDetailsResponseModel;

  factory ContactDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$ContactDetailsResponseModelFromJson(json);
}

@Freezed()
class ContactDetailsDataModel with _$ContactDetailsDataModel{
  const factory ContactDetailsDataModel({
    String? type,
    String? number
  }) = _ContactDetailsDataModel;

  factory ContactDetailsDataModel.fromJson(Map<String, dynamic> json) => _$ContactDetailsDataModelFromJson(json);
}

@Freezed()
class VerifyOtpDataModel with _$VerifyOtpDataModel{
  const factory VerifyOtpDataModel({
    String? page,
    String? token,
  }) = _VerifyOtpDataModel;

  factory VerifyOtpDataModel.fromJson(Map<String, dynamic> json) => _$VerifyOtpDataModelFromJson(json);
}

@Freezed()
class UploadFileResponseModel with _$UploadFileResponseModel{
  const factory UploadFileResponseModel({
    int? status,
    String? message,
    String? data
  }) = _UploadFileResponseModel;

  factory UploadFileResponseModel.fromJson(Map<String, dynamic> json) => _$UploadFileResponseModelFromJson(json);
}

@Freezed()
class FetchUserDetailsResponseModel with _$FetchUserDetailsResponseModel{
  const factory FetchUserDetailsResponseModel({
    int? status,
    String? message,
    FetchUserDetailsDataModel? data
  }) = _FetchUserDetailsResponseModel;

  factory FetchUserDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchUserDetailsResponseModelFromJson(json);
}

@Freezed()
class FetchUserDetailsDataModel with _$FetchUserDetailsDataModel{
  const factory FetchUserDetailsDataModel({
    String? token,
    UserModel? userDetails,
    HomeModel? primaryHome,
    SupportModel? support
  }) = _FetchUserDetailsDataModel;

  factory FetchUserDetailsDataModel.fromJson(Map<String, dynamic> json) => _$FetchUserDetailsDataModelFromJson(json);
}


@Freezed()
class SupportModel with _$SupportModel{
  const factory SupportModel({
    String? supportEmail,
    String? supportNumber
  }) = _SupportModel;

  factory SupportModel.fromJson(Map<String, dynamic> json) => _$SupportModelFromJson(json);
}

@Freezed()
class UserModel with _$UserModel{
  const factory UserModel({
    @JsonKey(name: '_id') String? id,
    String? image,
    int? mobile,
    String? name,
    String? email,
    String? gender,
    String? dob,
    String? profilePic,
    int? otp,
    String? source,
    String? version,
    String? deviceId,
    bool? blocked,
    dynamic favouriteHomes,
    dynamic onGoingBookings,
    dynamic upComingBookings,
    dynamic wallet,
    LocationModel? address,
    String? referralCode,
    List<dynamic>? referrals,
    int? referralEarnings,
    List<DocumentDataModel>? kycDocuments,
    ReferralModel? referral,
    int? referralCount,
    String? dealingType,
    String? primaryHome,
    SubscriptionModel? subscription,
    dynamic primaryAccountId,
    bool? payUAutherised,
    bool? isHost
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@Freezed()
class ReferralModel with _$ReferralModel{
  const factory ReferralModel({
    int? referralAmount,
    int? referralCount
  }) = _ReferralModel;

  factory ReferralModel.fromJson(Map<String, dynamic> json) => _$ReferralModelFromJson(json);
}


@Freezed()
class SubscriptionModel with _$SubscriptionModel{
  const factory SubscriptionModel({
    @JsonKey(name: '_id') String? id,
    dynamic colorCode,
    String? name,
    String? membershipType,
    String? duration,
    int? price,
    int? discount,
    int? durationByDays,
    String? createdAt,
    String? startDate,
    String? endDate,
    bool? isActive,
    List<String>? list,
    String? razorpayPlanId
  }) = _SubscriptionModel;

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) => _$SubscriptionModelFromJson(json);
}

@Freezed()
class DocumentDataModel with _$DocumentDataModel{
  const factory DocumentDataModel({
    required String? documentType,
    required String? documentStatus,
    required String? uploadedUrl,
    required String? errorTxt
  }) = _DocumentDataModel;

  factory DocumentDataModel.fromJson(Map<String, dynamic> json) => _$DocumentDataModelFromJson(json);
}

@Freezed()
class FetchNotificationsResponseModel with _$FetchNotificationsResponseModel{
  const factory FetchNotificationsResponseModel({
    int? status,
    String? message,
    List<NotificationModel>? data
  }) = _FetchNotificationsResponseModel;

  factory FetchNotificationsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchNotificationsResponseModelFromJson(json);
}

@Freezed()
class NotificationModel with _$NotificationModel{
  const factory NotificationModel({
    @JsonKey(name: '_id') String? id,
    String? topic,
    String? title,
    String? body,
    String? image,
    DateTime? createdAt
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);
}


@Freezed()
class FetchSubscriptionsResponseModel with _$FetchSubscriptionsResponseModel{
  const factory FetchSubscriptionsResponseModel({
    int? status,
    String? message,
    SubscriptionDataModel? data
  }) = _FetchSubscriptionsResponseModel;

  factory FetchSubscriptionsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchSubscriptionsResponseModelFromJson(json);
}


@Freezed()
class SubscriptionDataModel with _$SubscriptionDataModel{
  const factory SubscriptionDataModel({
    bool? subscribed,
    List<String>? list,
    List<SubscriptionModel>? subscriptions
  }) = _SubscriptionDataModel;

  factory SubscriptionDataModel.fromJson(Map<String, dynamic> json) => _$SubscriptionDataModelFromJson(json);
}


