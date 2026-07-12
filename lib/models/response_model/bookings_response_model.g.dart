// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeUnitAvailabilityResponseModelImpl
    _$$HomeUnitAvailabilityResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$HomeUnitAvailabilityResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : HomeUnitBookingDataModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$HomeUnitAvailabilityResponseModelImplToJson(
        _$HomeUnitAvailabilityResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ConfirmBookingResponseModelImpl _$$ConfirmBookingResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmBookingResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HomeUnitBookingDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConfirmBookingResponseModelImplToJson(
        _$ConfirmBookingResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$HomeUnitAvailabilityDatesResponseModelImpl
    _$$HomeUnitAvailabilityDatesResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$HomeUnitAvailabilityDatesResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  AvailabilityDataModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$HomeUnitAvailabilityDatesResponseModelImplToJson(
        _$HomeUnitAvailabilityDatesResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$AvailabilityDataModelImpl _$$AvailabilityDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityDataModelImpl(
      date: json['date'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$AvailabilityDataModelImplToJson(
        _$AvailabilityDataModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'status': instance.status,
    };

_$GuestDetailsModelImpl _$$GuestDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GuestDetailsModelImpl(
      name: json['name'] as String?,
      mobile: json['mobile'] as int?,
      aadharImage: json['aadharImage'] as String?,
      aadharNumber: json['aadharNumber'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
    );

Map<String, dynamic> _$$GuestDetailsModelImplToJson(
        _$GuestDetailsModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'aadharImage': instance.aadharImage,
      'aadharNumber': instance.aadharNumber,
      'gender': instance.gender,
      'dob': instance.dob,
    };

_$HomeUnitBookingDataModelImpl _$$HomeUnitBookingDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeUnitBookingDataModelImpl(
      walletBalance: json['walletBalance'],
      amount: json['amount'] as int?,
      discount: json['discount'] as int?,
      walletDeduction: json['walletDeduction'] as int?,
      subTotal: json['subTotal'] as int?,
      paymentDetailLogs: (json['paymentDetailLogs'] as List<dynamic>?)
          ?.map((e) => AmountDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      onGoingBookings: (json['onGoingBookings'] as List<dynamic>?)
          ?.map((e) => BookingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookingResponse: json['bookingResponse'] == null
          ? null
          : BookingModel.fromJson(
              json['bookingResponse'] as Map<String, dynamic>),
      transactionResponse: json['transactionResponse'] == null
          ? null
          : TransactionDataModel.fromJson(
              json['transactionResponse'] as Map<String, dynamic>),
      subscription: json['subscription'] == null
          ? null
          : SubscriptionModel.fromJson(
              json['subscription'] as Map<String, dynamic>),
      razorpaySubscription: json['razorpaySubscription'] == null
          ? null
          : RazorpaySubscriptionModel.fromJson(
              json['razorpaySubscription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeUnitBookingDataModelImplToJson(
        _$HomeUnitBookingDataModelImpl instance) =>
    <String, dynamic>{
      'walletBalance': instance.walletBalance,
      'amount': instance.amount,
      'discount': instance.discount,
      'walletDeduction': instance.walletDeduction,
      'subTotal': instance.subTotal,
      'paymentDetailLogs': instance.paymentDetailLogs,
      'onGoingBookings': instance.onGoingBookings,
      'bookingResponse': instance.bookingResponse,
      'transactionResponse': instance.transactionResponse,
      'subscription': instance.subscription,
      'razorpaySubscription': instance.razorpaySubscription,
    };

_$RazorpaySubscriptionModelImpl _$$RazorpaySubscriptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RazorpaySubscriptionModelImpl(
      id: json['id'] as String?,
      status: json['status'] as String?,
      currentStart: json['currentStart'] as int?,
      currentEnd: json['currentEnd'] as int?,
      paidCount: json['paidCount'] as int?,
      totalCount: json['totalCount'] as int?,
    );

Map<String, dynamic> _$$RazorpaySubscriptionModelImplToJson(
        _$RazorpaySubscriptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'currentStart': instance.currentStart,
      'currentEnd': instance.currentEnd,
      'paidCount': instance.paidCount,
      'totalCount': instance.totalCount,
    };

_$FetchTransactionsResponseModelImpl
    _$$FetchTransactionsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$FetchTransactionsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  TransactionDataModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchTransactionsResponseModelImplToJson(
        _$FetchTransactionsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$TransactionDataModelImpl _$$TransactionDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDataModelImpl(
      id: json['_id'] as String?,
      userTitle: json['userTitle'] as String?,
      hostTitle: json['hostTitle'] as String?,
      transactionType: json['transactionType'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      userId: json['userId'],
      hostId: json['hostId'],
      bookingId: json['bookingId'],
      withdrawTransactionId: json['withdrawTransactionId'],
      withdrawStatus: json['withdrawStatus'] as String?,
      failedReason: json['failedReason'] as String?,
      orderId: json['orderId'] as String?,
      paymentId: json['paymentId'] as String?,
      amount: json['amount'],
      logs: (json['logs'] as List<dynamic>?)
          ?.map((e) => AmountDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      paymentDetails: json['paymentDetails'] == null
          ? null
          : PaymentDetailModel.fromJson(
              json['paymentDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionDataModelImplToJson(
        _$TransactionDataModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userTitle': instance.userTitle,
      'hostTitle': instance.hostTitle,
      'transactionType': instance.transactionType,
      'paymentStatus': instance.paymentStatus,
      'userId': instance.userId,
      'hostId': instance.hostId,
      'bookingId': instance.bookingId,
      'withdrawTransactionId': instance.withdrawTransactionId,
      'withdrawStatus': instance.withdrawStatus,
      'failedReason': instance.failedReason,
      'orderId': instance.orderId,
      'paymentId': instance.paymentId,
      'amount': instance.amount,
      'logs': instance.logs,
      'createdAt': instance.createdAt?.toIso8601String(),
      'paymentDetails': instance.paymentDetails,
    };

_$PaymentDetailModelImpl _$$PaymentDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentDetailModelImpl(
      amount: json['amount'],
      discount: json['discount'],
      discountByAdmin: json['discountByAdmin'] as bool?,
      unitGstPercentage: json['unitGstPercentage'],
      unitGst: json['unitGst'],
      platformCharges: json['platformCharges'],
      platformGstPercentage: json['platformGstPercentage'],
      platformChargesBase: json['platformChargesBase'],
      platformChargesGst: json['platformChargesGst'],
      walletDeduction: json['walletDeduction'],
      subTotal: json['subTotal'],
      refundedAmount: json['refundedAmount'],
      chargePercentage: json['chargePercentage'],
      chargeAmount: json['chargeAmount'],
      chargeGst: json['chargeGst'],
      outwardBaseAmount: json['outwardBaseAmount'],
      outwardGst: json['outwardGst'],
      outwardAmount: json['outwardAmount'],
      profitExcludingItc: json['profitExcludingItc'],
      profitIncludingItc: json['profitIncludingItc'],
    );

Map<String, dynamic> _$$PaymentDetailModelImplToJson(
        _$PaymentDetailModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'discount': instance.discount,
      'discountByAdmin': instance.discountByAdmin,
      'unitGstPercentage': instance.unitGstPercentage,
      'unitGst': instance.unitGst,
      'platformCharges': instance.platformCharges,
      'platformGstPercentage': instance.platformGstPercentage,
      'platformChargesBase': instance.platformChargesBase,
      'platformChargesGst': instance.platformChargesGst,
      'walletDeduction': instance.walletDeduction,
      'subTotal': instance.subTotal,
      'refundedAmount': instance.refundedAmount,
      'chargePercentage': instance.chargePercentage,
      'chargeAmount': instance.chargeAmount,
      'chargeGst': instance.chargeGst,
      'outwardBaseAmount': instance.outwardBaseAmount,
      'outwardGst': instance.outwardGst,
      'outwardAmount': instance.outwardAmount,
      'profitExcludingItc': instance.profitExcludingItc,
      'profitIncludingItc': instance.profitIncludingItc,
    };

_$AmountDetailsModelImpl _$$AmountDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AmountDetailsModelImpl(
      message: json['message'] as String?,
      amount: json['amount'] as String?,
    );

Map<String, dynamic> _$$AmountDetailsModelImplToJson(
        _$AmountDetailsModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'amount': instance.amount,
    };

_$FetchBookingsResponseModelImpl _$$FetchBookingsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchBookingsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BookingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchBookingsResponseModelImplToJson(
        _$FetchBookingsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchBookingDetailsResponseModelImpl
    _$$FetchBookingDetailsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$FetchBookingDetailsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : BookingModel.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FetchBookingDetailsResponseModelImplToJson(
        _$FetchBookingDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$BookingModelImpl _$$BookingModelImplFromJson(Map<String, dynamic> json) =>
    _$BookingModelImpl(
      id: json['_id'] as String?,
      bookedBy: json['bookedBy'] as String?,
      userId: json['userId'],
      hostId: json['hostId'],
      homeId: json['homeId'],
      unitId: json['unitId'],
      transactionId: json['transactionId'],
      orderId: json['orderId'] as String?,
      paymentId: json['paymentId'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      checkInDate: json['checkInDate'] == null
          ? null
          : DateTime.parse(json['checkInDate'] as String),
      checkOutDate: json['checkOutDate'] == null
          ? null
          : DateTime.parse(json['checkOutDate'] as String),
      guestCount: json['guestCount'] as int?,
      amount: json['amount'] as int?,
      discount: json['discount'] as int?,
      walletDeduction: json['walletDeduction'] as int?,
      subTotal: json['subTotal'] as int?,
      guestDetailsList: (json['guestDetailsList'] as List<dynamic>?)
          ?.map((e) => GuestDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      logs: (json['logs'] as List<dynamic>?)
          ?.map((e) => AmountDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookingStatus: json['bookingStatus'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'bookedBy': instance.bookedBy,
      'userId': instance.userId,
      'hostId': instance.hostId,
      'homeId': instance.homeId,
      'unitId': instance.unitId,
      'transactionId': instance.transactionId,
      'orderId': instance.orderId,
      'paymentId': instance.paymentId,
      'paymentStatus': instance.paymentStatus,
      'checkInDate': instance.checkInDate?.toIso8601String(),
      'checkOutDate': instance.checkOutDate?.toIso8601String(),
      'guestCount': instance.guestCount,
      'amount': instance.amount,
      'discount': instance.discount,
      'walletDeduction': instance.walletDeduction,
      'subTotal': instance.subTotal,
      'guestDetailsList': instance.guestDetailsList,
      'logs': instance.logs,
      'bookingStatus': instance.bookingStatus,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
