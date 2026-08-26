import 'dart:convert';
import 'dart:io';
import 'package:bayitouser/pages/sign_in_page.dart';
import 'package:bayitouser/pages/splash_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as dio;

import 'package:image/image.dart' as img;

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/api_provider.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';

import '../components/custom_network_image.dart';
import '../components/error_text_component.dart';
import '../models/requestModels/auth_request_model.dart';
import '../models/requestModels/sign_in_request_model.dart';
import '../models/requestModels/sign_up_request_model.dart';
import '../models/responseModels/auth_response_model.dart';
import '../models/responseModels/file_upload_response_model.dart';
import '../models/responseModels/open_hour_model.dart';
import '../pages/main_page.dart';
import '../pages/regsiter_user_page.dart';
import '../pages/update_version_screen.dart';
import '../pages/user_blocked.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_color.dart';
import '../utils/geo_util.dart';
import '../utils/preference_manager.dart';
import 'package:http/http.dart' as http;
import 'dart:typed_data';

import '../utils/snack_bar_extension.dart';


class OutletViewModel extends GetxController {
  final apiProvider = Get.put(ApiProvider());
  final preferenceManager = Get.put(PreferenceManager());

  final fetchSearchedOutletsObserver = PaginationModel(data: const ApiResult<FetchPgsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchNearbyOutletsObserver = PaginationModel(data: const ApiResult<FetchPgsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchObserver = PaginationModel(data: const ApiResult<FetchPgsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;


  Future<void> fetchPgs(PaginationRequestModel request,bool refresh) async {

    if(authViewModel.selectedTab.value == "Homes") return;

    final observer = request.type == "favourites" ? fetchFavouritePgsObserver : request.type == "search" ? fetchSearchPgsObserver  : fetchPgsObserver;
    final endPoint = request.type == "favourites" ? EndPoints.fetchFavouritePgs : request.type == "search" ? EndPoints.fetchSearchPgs : EndPoints.fetchPgs;

    try{
      PaginationRequestModel newRequest = request;
      if(refresh == true){
        observer.value = PaginationModel(data: const ApiResult<FetchPgsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "");
      }

      if (observer.value.isPaginationCompleted || observer.value.isLoading == true) return;

      if(observer.value.page == 1){
        observer.value.data.value = const ApiResult.loading("");
      }
      else{
        observer.value.isLoading = true;
        observer.refresh();
      }

      const maxListApiReturns = 10;
      observer.refresh();

      final String? validatorResponse = AuthUtils.validateRequestFields(['page'], newRequest.toJson());
      if(validatorResponse != null) throw validatorResponse;

      final response = await apiProvider.post(endPoint,newRequest.toJson());

      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FetchPgsResponseModel.fromJson(body);
        if(responseData.status == 1){
          observer.value.data.value.maybeWhen(success: (data) {
            final oldList = (data as FetchPgsResponseModel?)?.data?.toList();
            for (final home in responseData.data ?? []) {
              if (oldList?.any((e) => e.id == home.id) == false) {
                oldList?.add(home);
              }
            }
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
