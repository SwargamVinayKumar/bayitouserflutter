// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateVersionResponseModelImpl _$$ValidateVersionResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateVersionResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ValidateDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ValidateVersionResponseModelImplToJson(
        _$ValidateVersionResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ValidateDataModelImpl _$$ValidateDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateDataModelImpl(
      validVersion: json['validVersion'] as bool?,
      userBlocked: json['userBlocked'] as bool?,
      page: json['page'] as String?,
      userData: json['userData'] == null
          ? null
          : UserModel.fromJson(json['userData'] as Map<String, dynamic>),
      banners:
          (json['banners'] as List<dynamic>?)?.map((e) => e as String).toList(),
      filterLocations: (json['filterLocations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      unitType: (json['unitType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ValidateDataModelImplToJson(
        _$ValidateDataModelImpl instance) =>
    <String, dynamic>{
      'validVersion': instance.validVersion,
      'userBlocked': instance.userBlocked,
      'page': instance.page,
      'userData': instance.userData,
      'banners': instance.banners,
      'filterLocations': instance.filterLocations,
      'unitType': instance.unitType,
    };

_$PrimaryResponseModelImpl _$$PrimaryResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrimaryResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$PrimaryResponseModelImplToJson(
        _$PrimaryResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$VerifyOtpResponseModelImpl _$$VerifyOtpResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyOtpResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VerifyOtpDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyOtpResponseModelImplToJson(
        _$VerifyOtpResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ContactDetailsResponseModelImpl _$$ContactDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactDetailsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              ContactDetailsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContactDetailsResponseModelImplToJson(
        _$ContactDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ContactDetailsDataModelImpl _$$ContactDetailsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactDetailsDataModelImpl(
      type: json['type'] as String?,
      number: json['number'] as String?,
    );

Map<String, dynamic> _$$ContactDetailsDataModelImplToJson(
        _$ContactDetailsDataModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'number': instance.number,
    };

_$VerifyOtpDataModelImpl _$$VerifyOtpDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyOtpDataModelImpl(
      page: json['page'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$VerifyOtpDataModelImplToJson(
        _$VerifyOtpDataModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'token': instance.token,
    };

_$UploadFileResponseModelImpl _$$UploadFileResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadFileResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$UploadFileResponseModelImplToJson(
        _$UploadFileResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchUserDetailsResponseModelImpl
    _$$FetchUserDetailsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$FetchUserDetailsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : FetchUserDetailsDataModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FetchUserDetailsResponseModelImplToJson(
        _$FetchUserDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchUserDetailsDataModelImpl _$$FetchUserDetailsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchUserDetailsDataModelImpl(
      token: json['token'] as String?,
      userDetails: json['userDetails'] == null
          ? null
          : UserModel.fromJson(json['userDetails'] as Map<String, dynamic>),
      primaryHome: json['primaryHome'] == null
          ? null
          : HomeModel.fromJson(json['primaryHome'] as Map<String, dynamic>),
      support: json['support'] == null
          ? null
          : SupportModel.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FetchUserDetailsDataModelImplToJson(
        _$FetchUserDetailsDataModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userDetails': instance.userDetails,
      'primaryHome': instance.primaryHome,
      'support': instance.support,
    };

_$SupportModelImpl _$$SupportModelImplFromJson(Map<String, dynamic> json) =>
    _$SupportModelImpl(
      supportEmail: json['supportEmail'] as String?,
      supportNumber: json['supportNumber'] as String?,
    );

Map<String, dynamic> _$$SupportModelImplToJson(_$SupportModelImpl instance) =>
    <String, dynamic>{
      'supportEmail': instance.supportEmail,
      'supportNumber': instance.supportNumber,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['_id'] as String?,
      image: json['image'] as String?,
      mobile: json['mobile'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
      profilePic: json['profilePic'] as String?,
      otp: json['otp'] as int?,
      source: json['source'] as String?,
      version: json['version'] as String?,
      deviceId: json['deviceId'] as String?,
      blocked: json['blocked'] as bool?,
      favouriteHomes: json['favouriteHomes'],
      onGoingBookings: json['onGoingBookings'],
      upComingBookings: json['upComingBookings'],
      wallet: json['wallet'],
      address: json['address'] == null
          ? null
          : LocationModel.fromJson(json['address'] as Map<String, dynamic>),
      referralCode: json['referralCode'] as String?,
      referrals: json['referrals'] as List<dynamic>?,
      referralEarnings: json['referralEarnings'] as int?,
      kycDocuments: (json['kycDocuments'] as List<dynamic>?)
          ?.map((e) => DocumentDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      referral: json['referral'] == null
          ? null
          : ReferralModel.fromJson(json['referral'] as Map<String, dynamic>),
      referralCount: json['referralCount'] as int?,
      dealingType: json['dealingType'] as String?,
      primaryHome: json['primaryHome'] as String?,
      subscription: json['subscription'] == null
          ? null
          : SubscriptionModel.fromJson(
              json['subscription'] as Map<String, dynamic>),
      primaryAccountId: json['primaryAccountId'],
      payUAutherised: json['payUAutherised'] as bool?,
      isHost: json['isHost'] as bool?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'mobile': instance.mobile,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'dob': instance.dob,
      'profilePic': instance.profilePic,
      'otp': instance.otp,
      'source': instance.source,
      'version': instance.version,
      'deviceId': instance.deviceId,
      'blocked': instance.blocked,
      'favouriteHomes': instance.favouriteHomes,
      'onGoingBookings': instance.onGoingBookings,
      'upComingBookings': instance.upComingBookings,
      'wallet': instance.wallet,
      'address': instance.address,
      'referralCode': instance.referralCode,
      'referrals': instance.referrals,
      'referralEarnings': instance.referralEarnings,
      'kycDocuments': instance.kycDocuments,
      'referral': instance.referral,
      'referralCount': instance.referralCount,
      'dealingType': instance.dealingType,
      'primaryHome': instance.primaryHome,
      'subscription': instance.subscription,
      'primaryAccountId': instance.primaryAccountId,
      'payUAutherised': instance.payUAutherised,
      'isHost': instance.isHost,
    };

_$ReferralModelImpl _$$ReferralModelImplFromJson(Map<String, dynamic> json) =>
    _$ReferralModelImpl(
      referralAmount: json['referralAmount'] as int?,
      referralCount: json['referralCount'] as int?,
    );

Map<String, dynamic> _$$ReferralModelImplToJson(_$ReferralModelImpl instance) =>
    <String, dynamic>{
      'referralAmount': instance.referralAmount,
      'referralCount': instance.referralCount,
    };

_$SubscriptionModelImpl _$$SubscriptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionModelImpl(
      id: json['_id'] as String?,
      colorCode: json['colorCode'],
      name: json['name'] as String?,
      membershipType: json['membershipType'] as String?,
      duration: json['duration'] as String?,
      price: json['price'] as int?,
      discount: json['discount'] as int?,
      durationByDays: json['durationByDays'] as int?,
      createdAt: json['createdAt'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      isActive: json['isActive'] as bool?,
      list: (json['list'] as List<dynamic>?)?.map((e) => e as String).toList(),
      razorpayPlanId: json['razorpayPlanId'] as String?,
    );

Map<String, dynamic> _$$SubscriptionModelImplToJson(
        _$SubscriptionModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'colorCode': instance.colorCode,
      'name': instance.name,
      'membershipType': instance.membershipType,
      'duration': instance.duration,
      'price': instance.price,
      'discount': instance.discount,
      'durationByDays': instance.durationByDays,
      'createdAt': instance.createdAt,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'isActive': instance.isActive,
      'list': instance.list,
      'razorpayPlanId': instance.razorpayPlanId,
    };

_$DocumentDataModelImpl _$$DocumentDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentDataModelImpl(
      documentType: json['documentType'] as String?,
      documentStatus: json['documentStatus'] as String?,
      uploadedUrl: json['uploadedUrl'] as String?,
      errorTxt: json['errorTxt'] as String?,
    );

Map<String, dynamic> _$$DocumentDataModelImplToJson(
        _$DocumentDataModelImpl instance) =>
    <String, dynamic>{
      'documentType': instance.documentType,
      'documentStatus': instance.documentStatus,
      'uploadedUrl': instance.uploadedUrl,
      'errorTxt': instance.errorTxt,
    };

_$FetchNotificationsResponseModelImpl
    _$$FetchNotificationsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$FetchNotificationsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => NotificationModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchNotificationsResponseModelImplToJson(
        _$FetchNotificationsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: json['_id'] as String?,
      topic: json['topic'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'topic': instance.topic,
      'title': instance.title,
      'body': instance.body,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$FetchSubscriptionsResponseModelImpl
    _$$FetchSubscriptionsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$FetchSubscriptionsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : SubscriptionDataModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FetchSubscriptionsResponseModelImplToJson(
        _$FetchSubscriptionsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$SubscriptionDataModelImpl _$$SubscriptionDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionDataModelImpl(
      subscribed: json['subscribed'] as bool?,
      list: (json['list'] as List<dynamic>?)?.map((e) => e as String).toList(),
      subscriptions: (json['subscriptions'] as List<dynamic>?)
          ?.map((e) => SubscriptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubscriptionDataModelImplToJson(
        _$SubscriptionDataModelImpl instance) =>
    <String, dynamic>{
      'subscribed': instance.subscribed,
      'list': instance.list,
      'subscriptions': instance.subscriptions,
    };
