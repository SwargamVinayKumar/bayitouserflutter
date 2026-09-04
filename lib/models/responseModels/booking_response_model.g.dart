// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingAvailabilityResponseImpl _$$BookingAvailabilityResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingAvailabilityResponseImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      code: json['code'] as String?,
      data: json['data'] == null
          ? null
          : BookingAvailabilityData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingAvailabilityResponseImplToJson(
        _$BookingAvailabilityResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$BookingAvailabilityDataImpl _$$BookingAvailabilityDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingAvailabilityDataImpl(
      available: json['available'] as bool?,
      bookingDetails: json['bookingDetails'] == null
          ? null
          : AvailabilityBookingDetails.fromJson(
              json['bookingDetails'] as Map<String, dynamic>),
      conflicts: (json['conflicts'] as List<dynamic>?)
          ?.map((e) => BookingConflict.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookingAvailabilityDataImplToJson(
        _$BookingAvailabilityDataImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'bookingDetails': instance.bookingDetails,
      'conflicts': instance.conflicts,
    };

_$AvailabilityBookingDetailsImpl _$$AvailabilityBookingDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityBookingDetailsImpl(
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
      duration: json['duration'] as int?,
      perHourCharge: json['perHourCharge'] as int?,
      subTotal: json['subTotal'] as int?,
      totalAmount: json['totalAmount'] as int?,
      maxAdvanceBooking: json['maxAdvanceBooking'] as String?,
    );

Map<String, dynamic> _$$AvailabilityBookingDetailsImplToJson(
        _$AvailabilityBookingDetailsImpl instance) =>
    <String, dynamic>{
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
      'duration': instance.duration,
      'perHourCharge': instance.perHourCharge,
      'subTotal': instance.subTotal,
      'totalAmount': instance.totalAmount,
      'maxAdvanceBooking': instance.maxAdvanceBooking,
    };

_$BookingConflictImpl _$$BookingConflictImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingConflictImpl(
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
      bookingId: json['bookingId'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$BookingConflictImplToJson(
        _$BookingConflictImpl instance) =>
    <String, dynamic>{
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
      'bookingId': instance.bookingId,
      'status': instance.status,
    };

_$ConfirmBookingResponseImpl _$$ConfirmBookingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmBookingResponseImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ConfirmBookingData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConfirmBookingResponseImplToJson(
        _$ConfirmBookingResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ConfirmBookingDataImpl _$$ConfirmBookingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmBookingDataImpl(
      bookingId: json['bookingId'] as String?,
      userId: json['userId'],
      outletId: json['outletId'] as String?,
      tableId: json['tableId'] as String?,
      seatId: json['seatId'] as String?,
      bookingOTP: json['bookingOTP'] as int?,
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
      duration: json['duration'] as int?,
      subTotal: json['subTotal'] as int?,
      discount: json['discount'] as int?,
      amount: json['amount'] as int?,
      bookingType: json['bookingType'] as String?,
      paymentType: json['paymentType'] as String?,
      status: json['status'] as String?,
      paymentLink: json['paymentLink'] as String?,
      orderId: json['orderId'] as String?,
      paymentId: json['paymentId'] as String?,
    );

Map<String, dynamic> _$$ConfirmBookingDataImplToJson(
        _$ConfirmBookingDataImpl instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'userId': instance.userId,
      'outletId': instance.outletId,
      'tableId': instance.tableId,
      'seatId': instance.seatId,
      'bookingOTP': instance.bookingOTP,
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
      'duration': instance.duration,
      'subTotal': instance.subTotal,
      'discount': instance.discount,
      'amount': instance.amount,
      'bookingType': instance.bookingType,
      'paymentType': instance.paymentType,
      'status': instance.status,
      'paymentLink': instance.paymentLink,
      'orderId': instance.orderId,
      'paymentId': instance.paymentId,
    };

_$BookingModelImpl _$$BookingModelImplFromJson(Map<String, dynamic> json) =>
    _$BookingModelImpl(
      id: json['_id'] as String?,
      status: json['status'] as String?,
      outletId: json['outletId'] == null
          ? null
          : OutletModel.fromJson(json['outletId'] as Map<String, dynamic>),
      tableId: json['tableId'] == null
          ? null
          : TableModel.fromJson(json['tableId'] as Map<String, dynamic>),
      seatId: json['seatId'] as String?,
      bookingType: json['bookingType'] as String?,
      bookingOTP: json['bookingOTP'] as int?,
      paymentType: json['paymentType'] as String?,
      orderId: json['orderId'] as String?,
      paymentId: json['paymentId'] as String?,
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
      amount: json['amount'] as int?,
      discount: json['discount'] as int?,
      charges: json['charges'] as int?,
      subTotal: json['subTotal'] as int?,
      refundedAmount: json['refundedAmount'] as int?,
      logs: (json['logs'] as List<dynamic>?)
          ?.map((e) => BookingLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      couponId: json['couponId'] as String?,
      paymentLogs: json['paymentLogs'] as List<dynamic>?,
      guestDetailsList: json['guestDetailsList'],
      userVisited: json['userVisited'] as bool?,
      cancellationDetails: json['cancellationDetails'],
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'status': instance.status,
      'outletId': instance.outletId,
      'tableId': instance.tableId,
      'seatId': instance.seatId,
      'bookingType': instance.bookingType,
      'bookingOTP': instance.bookingOTP,
      'paymentType': instance.paymentType,
      'orderId': instance.orderId,
      'paymentId': instance.paymentId,
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
      'amount': instance.amount,
      'discount': instance.discount,
      'charges': instance.charges,
      'subTotal': instance.subTotal,
      'refundedAmount': instance.refundedAmount,
      'logs': instance.logs,
      'couponId': instance.couponId,
      'paymentLogs': instance.paymentLogs,
      'guestDetailsList': instance.guestDetailsList,
      'userVisited': instance.userVisited,
      'cancellationDetails': instance.cancellationDetails,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$BookingLogImpl _$$BookingLogImplFromJson(Map<String, dynamic> json) =>
    _$BookingLogImpl(
      action: json['action'] as String?,
      timestamp: json['timestamp'] as String?,
      details: json['details'] as String?,
    );

Map<String, dynamic> _$$BookingLogImplToJson(_$BookingLogImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'timestamp': instance.timestamp,
      'details': instance.details,
    };

_$BookingPaginationImpl _$$BookingPaginationImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingPaginationImpl(
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      totalCount: json['totalCount'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$BookingPaginationImplToJson(
        _$BookingPaginationImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'limit': instance.limit,
    };

_$BookingListDataImpl _$$BookingListDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingListDataImpl(
      bookings: (json['bookings'] as List<dynamic>?)
          ?.map((e) => BookingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : BookingPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingListDataImplToJson(
        _$BookingListDataImpl instance) =>
    <String, dynamic>{
      'bookings': instance.bookings,
      'pagination': instance.pagination,
    };

_$BookingListResponseImpl _$$BookingListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingListResponseImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BookingListData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingListResponseImplToJson(
        _$BookingListResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$BookingDetailsResponseImpl _$$BookingDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingDetailsResponseImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BookingModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingDetailsResponseImplToJson(
        _$BookingDetailsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
