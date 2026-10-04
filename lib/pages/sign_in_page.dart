import 'package:bayitouser/api/api_result.dart';
import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/components/custom_textfield.dart';
import 'package:bayitouser/pages/sign_up_page.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/responseModels/auth_response_model.dart';
import '../utils/snack_bar_extension.dart';
import '../view_models/auth_view_model.dart';
import 'package:get/get.dart';



class SignInPage extends StatelessWidget {

  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {

    final authViewModel = Get.put(AuthViewModel());

    return Scaffold(
      backgroundColor:CustomColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/bayitoLogo.jpeg"),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(height: 30),
                CustomTextFieldComponent(
                  hintText: "Email/MobileNumber",
                  textController: authViewModel.emailMobileController,
                ),
                const SizedBox(height: 8),
                CustomTextFieldComponent(
                  hintText: "Password",
                  isPassword: true,
                  textController: authViewModel.signInPasswordController,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        if(authViewModel.emailMobileController.text.trim().isEmpty){
                          Get.showCustomSnackBar(title: 'Failed', message: "Email Or Mobile should be entered");
                        }
                        else{
                          authViewModel.signUpObserver.value = ApiResult.success(SignInResponseModel(status: 1,message: "success"));
                          Get.to(() =>  const SignUpPage(forgotPassword: true));
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                            color: CustomColors.secondary,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            decorationColor: CustomColors.secondary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Obx(() {
                  final state = authViewModel.signInObserver.value;
                  return state.maybeWhen(
                    loading: (_) => const CircularProgressIndicator(),
                    orElse: () => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: CustomGradientButton(
                        title: "Login",
                        fontSize: 18,
                        onTap: () => authViewModel.signIn(),
                      ),
                    ),
                  );
                }),
                const SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColors.darkBlack,
                    ),
                    children: [
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            Get.offAll(() =>  const SignUpPage());
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: CustomColors.secondary,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
