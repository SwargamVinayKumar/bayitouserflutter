import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import '../utils/preference_manager.dart';

class ApiProvider<T> extends GetConnect {
  String apiKey = '343532213454';
  String apiLiveBaseUrl = false ? 'https://bayito-1b5b8.el.r.appspot.com/user/' : 'http://192.168.29.4:3055/user/';
  String token = '';
  //eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJtb2JpbGUiOjk0OTI0NTQ4NDMsImlkIjoiNmE4NjdmM2NhNDdjMWY0MTZjNDViZTE1IiwiaWF0IjoxNzg3MTk5MjkyLCJleHAiOjE3OTQ5NzUyOTJ9.wszE7LTLmJShNDBoUz8QXX0O-C3JznK9tb7hgZgGtwk
  @override
  void onInit() async {
    httpClient.baseUrl = apiLiveBaseUrl;
    httpClient.defaultContentType = 'application/json';
    httpClient.timeout = const Duration(seconds: 25);
    httpClient.addRequestModifier<T>((request) async {
      final preferenceManager = Get.find<PreferenceManager>();
      token = await preferenceManager.getValue(preferenceManager.token) ?? "";
      final modifiedRequest = request as Request<T>;
      modifiedRequest.headers['Authorization'] = token.isNotEmpty ?  "Bearer ${token}" : "";
      modifiedRequest.headers['ApiKey'] = apiKey;
      return modifiedRequest;
    });
    super.onInit();
  }
}