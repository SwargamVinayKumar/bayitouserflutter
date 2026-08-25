import 'package:bayitouser/pages/sign_in_page.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view_models/auth_view_model.dart';
import '../view_models/home_view_model.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final authViewModel = Get.put(AuthViewModel());
  final homeViewModel = Get.put(HomeViewModel());


  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () async {
        // await authViewModel.fetchCurrentLocation();
        // final version = await AuthUtils.getAppVersion();
        // await authViewModel.validateVersion(ValidateVersionRequestModel(version: version,location: authViewModel.locationDetails.value), homeViewModel);
        Future.delayed(const Duration(seconds: 2), () { Get.offAll(() =>  const SignInPage()); });
      },
      child: Scaffold(
        backgroundColor: CustomColors.secondary,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/bayitoLogo.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              const SizedBox(width: 20,height: 20,child: CircularProgressIndicator(color: CustomColors.white,strokeWidth: 0.5,))
            ],
          ),
        ),
      ),
    );
  }
}