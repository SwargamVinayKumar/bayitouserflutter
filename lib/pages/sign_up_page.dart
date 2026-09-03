
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../components/custom_gradient_button.dart';
import '../components/custom_textfield.dart';
import '../utils/custom_color.dart';
import 'dart:io';
import 'package:sms_autofill/sms_autofill.dart';
import '../utils/progress_dialog.dart';
import '../utils/snack_bar_extension.dart';
import '../view_models/auth_view_model.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with CodeAutoFill {
  final authViewModel = Get.put(AuthViewModel());

  @override
  void initState() {
    super.initState();
    listenForCode(); // start listening for OTP
  }

  @override
  void dispose() {
    cancel(); // stop listening
    super.dispose();
  }

  @override
  void codeUpdated() {
    authViewModel.otpController.text = code.toString();
    authViewModel.verifyOtp();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: CustomColors.primary,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Stack(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Obx(() {
                      return authViewModel.signUpObserver.value.maybeWhen(success: (response){return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            child: Text(
                              "OTP Verification",
                              style: TextStyle(
                                color: CustomColors.textColor,
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            child: Text(
                              "Verification Code Sent To ${authViewModel.mobileController.text}",
                              style: const TextStyle(
                                color: CustomColors.secondary,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: PinFieldAutoFill(
                              controller: authViewModel.otpController,
                              codeLength: 6,
                              autoFocus: true,
                              decoration: UnderlineDecoration(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: CustomColors.secondary,
                                  fontWeight: FontWeight.w600,
                                ),
                                colorBuilder: const FixedColorBuilder(CustomColors.secondary),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: CustomGradientButton(
                              title: "Next",
                              fontSize: 18,
                              onTap: () async {
                                if (authViewModel.fullNameController.text.isEmpty) {
                                  Get.showCustomSnackBar(title: 'Error', message: "Please enter full name");
                                  return;
                                }
                                if (!GetUtils.isEmail(authViewModel.signUpEmailController.text)) {
                                  Get.showCustomSnackBar(title: 'Error', message: "Please enter a valid email");
                                  return;
                                }
                                if (authViewModel.mobileController.text.length < 10) {
                                  Get.showCustomSnackBar(title: 'Error', message: "Please enter a valid mobile number");
                                  return;
                                }
                                if (authViewModel.signUpPasswordController.text.length < 6) {
                                  Get.showCustomSnackBar(title: 'Error', message: "Password must be at least 6 characters");
                                  return;
                                }
                                if (authViewModel.otpController.text.trim().length != 6) {
                                  Get.showCustomSnackBar(title: 'Error', message: "Otp must be  6 characters");
                                  return;
                                }
                                if (authViewModel.signUpPasswordController.text !=
                                    authViewModel.confirmPasswordController.text) {
                                  Get.showCustomSnackBar(title: 'Error', message: "Passwords do not match");
                                  return;
                                }
                                await authViewModel.verifyOtp();
                              },
                            ),
                          ),
                          const SizedBox(height: 30),
                        ],
                      );},orElse: () {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 40),
                            Obx(() => GestureDetector(
                              onTap: () async {
                                final ImagePicker picker = ImagePicker();
                                final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                                if (image != null) {
                                  authViewModel.profilePic.value = File(image.path);
                                }
                              },
                              child: Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200,
                                  image: authViewModel.profilePic.value != null
                                      ? DecorationImage(image: FileImage(authViewModel.profilePic.value!), fit: BoxFit.cover)
                                      : null,
                                ),
                                child: authViewModel.profilePic.value == null
                                    ? const Icon(Icons.add_a_photo, size: 40, color: Colors.grey)
                                    : null,
                              ),
                            )),
                            const SizedBox(height: 30),
                            CustomTextFieldComponent(
                              hintText: "Full Name",
                              textController: authViewModel.fullNameController,
                            ),
                            const SizedBox(height: 8),
                            CustomTextFieldComponent(
                              hintText: "Email Id",
                              textController: authViewModel.signUpEmailController,
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 8),
                            CustomTextFieldComponent(
                              hintText: "Mobile Number",
                              textLength: 10,
                              textController: authViewModel.mobileController,
                              keyboardType: TextInputType.phone,
                            ),
                            const SizedBox(height: 8),
                            CustomTextFieldComponent(
                              hintText: "Password",
                              isPassword: true,
                              textController: authViewModel.signUpPasswordController,
                            ),
                            const SizedBox(height: 8),
                            CustomTextFieldComponent(
                              hintText: "Confirm Password",
                              isPassword: true,
                              textController: authViewModel.confirmPasswordController,
                            ),
                            const SizedBox(height: 24),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: CustomGradientButton(
                                title: "Next",
                                fontSize: 18,
                                onTap: () async {
                                  if (authViewModel.fullNameController.text.isEmpty) {
                                    Get.showCustomSnackBar(title: 'Error', message: "Please enter full name");
                                    return;
                                  }
                                  if (!GetUtils.isEmail(authViewModel.signUpEmailController.text)) {
                                    Get.showCustomSnackBar(title: 'Error', message: "Please enter a valid email");
                                    return;
                                  }
                                  if (authViewModel.mobileController.text.length < 10) {
                                    Get.showCustomSnackBar(title: 'Error', message: "Please enter a valid mobile number");
                                    return;
                                  }
                                  if (authViewModel.signUpPasswordController.text.length < 6) {
                                    Get.showCustomSnackBar(title: 'Error', message: "Password must be at least 6 characters");
                                    return;
                                  }
                                  if (authViewModel.signUpPasswordController.text !=
                                      authViewModel.confirmPasswordController.text) {
                                    Get.showCustomSnackBar(title: 'Error', message: "Passwords do not match");
                                    return;
                                  }
                                  await authViewModel.signUp();
                                },
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        );
                      });
                    }),
                  ),
                ),
                Obx(() => authViewModel.signUpObserver.value.maybeWhen(loading: (cd) => Expanded(child: Container(color: Colors.black.withOpacity(0.2),child: Center(child: ProgressDialog(),))),orElse: () => SizedBox())),
                Obx(() => authViewModel.verifyOtpObserver.value.maybeWhen(loading: (cdx) => Expanded(child: Container(color: Colors.black.withOpacity(0.2),child: Center(child: ProgressDialog(),))),orElse: () => SizedBox()))
              ],
            ),
          ),
        ),
      ),
    );
  }


}
