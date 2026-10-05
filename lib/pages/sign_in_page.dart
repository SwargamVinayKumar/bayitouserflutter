import 'package:bayitouser/api/api_result.dart';
import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/components/custom_textfield.dart';
import 'package:bayitouser/pages/privacy_security_page.dart';
import 'package:bayitouser/pages/sign_up_page.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/utils/preference_manager.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/responseModels/auth_response_model.dart';
import '../utils/snack_bar_extension.dart';
import '../view_models/auth_view_model.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final AuthViewModel authViewModel;
  late final PreferenceManager preferenceManager;

  // ✅ Policy acceptance state
  final isPolicyAccepted = false.obs;

  @override
  void initState() {
    super.initState();
    authViewModel = Get.put(AuthViewModel());
    preferenceManager = Get.find<PreferenceManager>();
    // Restore previous acceptance (optional — remove if not needed)
    isPolicyAccepted.value = false;
  }

  // ✅ Handle login with policy check
  void _handleLogin() {
    if (!isPolicyAccepted.value) {
      Get.showCustomSnackBar(
        title: 'Policy Required',
        message: "Please accept the Terms & Conditions and Privacy Policy to continue.",
      );
      return;
    }
    authViewModel.signIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primary,
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

                // ---------- Forgot Password ----------
                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        if (authViewModel.emailMobileController.text.trim().isEmpty) {
                          Get.showCustomSnackBar(
                            title: 'Failed',
                            message: "Email Or Mobile should be entered",
                          );
                        } else {
                          authViewModel.signUpObserver.value = ApiResult.success(
                            SignInResponseModel(status: 1, message: "success"),
                          );
                          Get.to(() => const SignUpPage(forgotPassword: true));
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
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // ---------- ✅ Policy Acceptance Checkbox ----------
                Obx(() => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Checkbox(
                        value: isPolicyAccepted.value,
                        activeColor: CustomColors.secondary,
                        side: BorderSide(color: CustomColors.darkBlack),
                        onChanged: (value) {
                          isPolicyAccepted.value = value ?? false;
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: CustomColors.darkBlack,
                              fontSize: 13,
                              height: 1.4,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              const TextSpan(text: "I agree to the "),
                              TextSpan(
                                text: "Terms & Conditions",
                                style: TextStyle(
                                  color: CustomColors.secondary,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline,
                                  decorationColor: CustomColors.secondary,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // 👇 Replace with your Terms page if different
                                    Get.to(() => const PrivacySecurityPage());
                                  },
                              ),
                              const TextSpan(text: " and "),
                              TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(
                                  color: CustomColors.secondary,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline,
                                  decorationColor: CustomColors.secondary,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.to(() => const PrivacySecurityPage());
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),

                const SizedBox(height: 24),

                // ---------- Login Button ----------
                Obx(() {
                  final state = authViewModel.signInObserver.value;

                  return state.maybeWhen(
                    loading: (_) => const CircularProgressIndicator(),
                    orElse: () => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: CustomGradientButton(
                        title: "Login",
                        fontSize: 18,
                        // ✅ Disable button visually when policy not accepted
                        onTap: isPolicyAccepted.value
                            ? _handleLogin
                            : () {
                          Get.showCustomSnackBar(
                            title: 'Policy Required',
                            message:
                            "Please accept the Terms & Conditions and Privacy Policy to continue.",
                          );
                        },
                      ),
                    ),
                  );
                }),

                const SizedBox(height: 30),

                // ---------- Sign Up ----------
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
                            Get.offAll(() => const SignUpPage());
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}