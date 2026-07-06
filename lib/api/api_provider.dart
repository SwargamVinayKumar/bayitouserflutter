import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

class ApiProvider<T> extends GetConnect {
  String apiKey = '343532213454';
  String apiLiveBaseUrl = 'https://bayito-1b5b8.el.r.appspot.com/user/';
  String token = '';

  @override
  void onInit() async {
    httpClient.baseUrl = apiLiveBaseUrl;
    httpClient.defaultContentType = 'application/json';
    httpClient.timeout = const Duration(seconds: 25);
    httpClient.addRequestModifier<T>((request) async {
      // final preferenceManager = Get.find<PreferenceManager>();
      // token = await preferenceManager.getValue(preferenceManager.token) ?? "";
      final modifiedRequest = request as Request<T>;
      modifiedRequest.headers['Authorization'] = token;
      modifiedRequest.headers['ApiKey'] = apiKey;
      return modifiedRequest;
    });
    super.onInit();
  }
}