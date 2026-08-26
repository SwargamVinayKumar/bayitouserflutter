import 'package:bayitouser/pages/sign_in_page.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/requestModels/auth_request_model.dart';
import '../utils/auth_utils.dart';
import '../view_models/auth_view_model.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final authViewModel = Get.put(AuthViewModel());


  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () async {
        final version = await AuthUtils.getAppVersion();
        await authViewModel.validateVersion(ValidateVersionRequestModel(version: version));
  //      Future.delayed(const Duration(seconds: 2), () { Get.offAll(() =>  const SignInPage()); });
      },
      child: Scaffold(
        backgroundColor: CustomColors.secondary,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/bayitoLogo.png',
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
              const Spacer(),
              const SizedBox(width: 20,height: 20,child: CircularProgressIndicator(color: CustomColors.white,strokeWidth: 0.5,)),
              const SizedBox(width: 20,height: 20)
            ],
          ),
        ),
      ),
    );
  }
}