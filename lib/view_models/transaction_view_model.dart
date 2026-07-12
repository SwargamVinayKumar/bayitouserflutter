import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/api_provider.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';

import '../components/helper_bottom_sheet.dart';
import '../models/request_model/account_request_models.dart';
import '../models/request_model/auth_request_model.dart';
import '../models/response_model/auth_response_model.dart';
import '../models/response_model/bookings_response_model.dart';
import '../models/response_model/transaction_response_model.dart';
import '../utils/ConfigKeys.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_color.dart';
import 'auth_view_model.dart';

import 'package:razorpay_flutter/razorpay_flutter.dart';
//import 'package:razorpay_web/razorpay_web.dart';


class TransactionViewModel extends GetxController {
  final authViewModel = Get.put(AuthViewModel());
  final apiProvider = Get.put(ApiProvider());

  Rx<UpiData?> accountDetails = Rx<UpiData?>(null);

  final Razorpay razorpay = Razorpay();

  final setAsPrimaryAccountObserver = ApiResult<PrimaryResponseModel>.init().obs;

  final fetchTransactionsObserver = PaginationModel(
          data:  ApiResult<FetchTransactionsResponseModel>.init().obs,
          isLoading: false,
          isPaginationCompleted: false,
          page: 1,
          error: "").obs;


  final createBankAccountObserver = ApiResult<PrimaryResponseModel>.init().obs;
  final createAccountObserver = ApiResult<PrimaryResponseModel>.init().obs;
  final deleteAccountObserver = ApiResult<PrimaryResponseModel>.init().obs;
  final fetchAccountsObserver = ApiResult<FetchAccountsResponseModel>.init().obs;
  final fetchWithdrawalDetailsObserver = ApiResult<FetchWithdrawalDetailsResponseModel>.init().obs;
  final withdrawBalanceObserver = ApiResult<AddBalanceResponseModel>.init().obs;


  final fetchNotificationsObserver =  PaginationModel(data: ApiResult<FetchNotificationsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final deleteNotificationObserver =  ApiResult<PrimaryResponseModel>.init().obs;


  void setupRazorpayWebCallbacks({
    required Function(String paymentId) onSuccess,
    required Function(String error) onFailed,
  }) {}


  void performCreateBankAccountAction(
      CreateBankAccountRequestModel request) async {
    try {
      createBankAccountObserver.value =  ApiResult.loading("wsd");
      final response =
          await apiProvider.post(EndPoints.addBankAccount, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = PrimaryResponseModel.fromJson(body);
        if (responseData.status == 1) {
          createBankAccountObserver.value = ApiResult.success(responseData);
          Get.back();
        } else {
          createBankAccountObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: CustomColors.primary,
              colorText: Colors.white);
        }
      } else {
        Get.snackbar('${response.statusCode ?? 0}',
            'something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: CustomColors.primary,
            colorText: Colors.white);
        createBankAccountObserver.value = ApiResult.error(
            "something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: CustomColors.red,
          colorText: Colors.white);
      createBankAccountObserver.value = ApiResult.error(e.toString());
    }
  }

  void performCreateAccountAction(CreateAccountRequestModel request) async {
    try {
      createAccountObserver.value = ApiResult.loading("wsd");
      final response =
          await apiProvider.post(EndPoints.createAccount, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = PrimaryResponseModel.fromJson(body);
        if (responseData.status == 1) {
          createAccountObserver.value = ApiResult.success(responseData);
          Get.back();
        } else {
          createAccountObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: CustomColors.primary,
              colorText: Colors.white);
        }
      } else {
        Get.snackbar('${response.statusCode ?? 0}',
            'something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: CustomColors.primary,
            colorText: Colors.white);
        createAccountObserver.value = ApiResult.error(
            "something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: CustomColors.red,
          colorText: Colors.white);
      createAccountObserver.value = ApiResult.error(e.toString());
    }
  }

  void performDeleteAccountAction(String id) async {
    try {
      deleteAccountObserver.value = ApiResult.loading(id);
      final response =
          await apiProvider.post(EndPoints.deleteAccount, {"accountId": id});
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = PrimaryResponseModel.fromJson(body);
        if (responseData.status == 1) {
          fetchAccountsObserver.value.whenOrNull(success: (data) {
            final responseData = (data as FetchAccountsResponseModel);
            final list = responseData.data?.toList() ?? List.empty();
            final index = list.indexWhere((element) => element.id == id);
            if (index != -1) {
              list.removeAt(index);
              fetchAccountsObserver.value =
                  ApiResult.success(responseData.copyWith(data: list));
            }
          });
          deleteAccountObserver.value = ApiResult.success(responseData);
        } else {
          deleteAccountObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: CustomColors.primary,
              colorText: Colors.white);
        }
      } else {
        Get.snackbar('${response.statusCode ?? 0}',
            'something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: CustomColors.primary,
            colorText: Colors.white);
        deleteAccountObserver.value = ApiResult.error(
            "something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: CustomColors.red,
          colorText: Colors.white);
      deleteAccountObserver.value = ApiResult.error(e.toString());
    }
  }

  void performFetchAccountsAction() async {
    try {
      fetchAccountsObserver.value = ApiResult.loading("dv");
      final response = await apiProvider.post(EndPoints.fetchAccounts, {});
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = FetchAccountsResponseModel.fromJson(body);
        if (responseData.status == 1) {
          fetchAccountsObserver.value = ApiResult.success(responseData);
          final primaryAccount = responseData.data
              ?.firstWhereOrNull((item) => item.primaryAccount == true);
          print(primaryAccount);
          if (primaryAccount != null) {
            accountDetails.value = primaryAccount;
          }
        } else {
          fetchAccountsObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: CustomColors.primary,
              colorText: Colors.white);
        }
      } else {
        Get.snackbar('${response.statusCode ?? 0}',
            'something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: CustomColors.primary,
            colorText: Colors.white);
        fetchAccountsObserver.value = ApiResult.error(
            "something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: CustomColors.red,
          colorText: Colors.white);
      fetchAccountsObserver.value = ApiResult.error(e.toString());
    }
  }

  void fetchWithdrawalDetails(AddBalanceRequestModel request) async {
    try {
      fetchWithdrawalDetailsObserver.value =  ApiResult.loading("edc");
      final response = await apiProvider.post(
          EndPoints.fetchWithdrawalDetails, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = FetchWithdrawalDetailsResponseModel.fromJson(body);
        if (responseData.status == 1) {
          fetchWithdrawalDetailsObserver.value =
              ApiResult.success(responseData);
        } else {
          fetchWithdrawalDetailsObserver.value =
              ApiResult.error(responseData.message ?? "");
        }
      } else {
        fetchWithdrawalDetailsObserver.value = ApiResult.error(
            "something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      fetchWithdrawalDetailsObserver.value = ApiResult.error(e.toString());
    }
  }

  void performWithDrawBalanceAction(
      WithdrawBalanceRequestModel request, BuildContext context) async {
    try {
      withdrawBalanceObserver.value =  ApiResult.loading("cd");
      final response =
          await apiProvider.post(EndPoints.withdrawAmount, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = AddBalanceResponseModel.fromJson(body);
        if (responseData.status == 1) {
          withdrawBalanceObserver.value = ApiResult.success(responseData);
          showModalBottomSheet(
            context: context,
            isDismissible: false,
            enableDrag: false,
            isScrollControlled: true, // allows full height scroll
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            builder: (context) {
              return HelperBottomSheet(
                  assetImage: "assets/images/success.png",
                  title: "Withdraw Request Successfully",
                  message:
                      "Your Withdrawal Request Send To Admin,Money Directly Added To Your Account After Admin Acceptance",
                  btn1Txt: "Done",
                  btn1Click: () {
                    Get.close(2);
                  });
            },
          );
        } else {
          withdrawBalanceObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(
            responseData.message ?? '',
            responseData.message ?? '',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: CustomColors.primary,
            colorText: Colors.white,
          );
        }
      } else {
        Get.snackbar(
          '${response.statusCode ?? 0}',
          'something went wrong+${response.statusText ?? 0}',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: CustomColors.primary,
          colorText: Colors.white,
        );
        withdrawBalanceObserver.value = ApiResult.error(
            "something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar(
        'Exception',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      withdrawBalanceObserver.value = ApiResult.error(e.toString());
    }
  }


  Future<void> fetchTransactions(PaginationRequestModel request,bool refresh) async {
    final observer = fetchTransactionsObserver;
    try{
      if(refresh == true){
        observer.value = PaginationModel(data:  ApiResult<FetchTransactionsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "");
      }

      if (observer.value.isPaginationCompleted || observer.value.isLoading == true) return;

      if(observer.value.page == 1){
        observer.value.data.value =  ApiResult.loading("");
      }
      else{
        observer.value.isLoading = true;
        observer.refresh();
      }

      const maxListApiReturns = 20;
      observer.refresh();

      final String? validatorResponse = AuthUtils.validateRequestFields(['page'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;

      final response = await apiProvider.post(EndPoints.fetchTransactions,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FetchTransactionsResponseModel.fromJson(body);
        if(responseData.status == 1){
          observer.value.data.value.maybeWhen(success: (data) {
            final oldList = (data as FetchTransactionsResponseModel?)?.data?.toList();
            oldList?.addAll(responseData.data ?? List.empty());
            observer.value.data.value = ApiResult.success(responseData.copyWith(data: oldList));
          }, orElse: () {
            observer.value.data.value = ApiResult.success(responseData);
          });

          observer.value.page = observer.value.page + 1;
          if ((responseData.data?.length ?? 0) < maxListApiReturns) {
            observer.value.isPaginationCompleted = true;
          }
          observer.value.isLoading = false;
          observer.refresh();
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      observer.value.data.value = ApiResult.error(e.toString());
      observer.value.isLoading = false;
      observer.refresh();
    }
  }


}
