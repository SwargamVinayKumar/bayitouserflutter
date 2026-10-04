
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/custom_gradient_button.dart';
import '../components/custom_textfield.dart';
import '../models/responseModels/auth_response_model.dart';
import '../utils/snack_bar_extension.dart';
import '../view_models/auth_view_model.dart';

class ChangePasswordPage extends StatefulWidget {
  final ProfileData? profileData;
  const ChangePasswordPage({super.key, this.profileData});

  @override
  State<ChangePasswordPage> createState() =>
      _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {

  final currentPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final AuthViewModel authViewModel = Get.put(AuthViewModel());

  final List<Map<String, dynamic>> passwordRules = [
    {
      "title": "Minimum 8 characters",
      "completed": true,
    },
    {
      "title": "One uppercase letter",
      "completed": true,
    },
    {
      "title": "One number",
      "completed": false,
    },
    {
      "title": "One special character",
      "completed": false,
    },
  ];

  bool hasMinLength = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecial = false;
  bool passwordsMatch = false;

  double passwordStrength = 0;
  String strengthText = "Weak";
  Color strengthColor = Colors.red;

  @override
  void dispose() {
    currentPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    newPasswordController.addListener(() {
      validatePassword(newPasswordController.text);
    });

    confirmPasswordController.addListener(() {
      validateConfirmPassword(confirmPasswordController.text);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Change Password",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffF5F1EE),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.lock_outline,
                  size: 45,
                  color: Color(0xff8B5A2B),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Update your password to keep\nyour account secure.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 35),
              CustomTextFieldComponent(hintText: 'Current Password',isPassword: true,textController:currentPasswordController),
              const SizedBox(height: 20),
              CustomTextFieldComponent(hintText: 'New Password',isPassword: true,textController:newPasswordController),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: passwordStrength,
                        minHeight: 8,
                        backgroundColor: Colors.grey.shade300,
                        color: strengthColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    strengthText,
                    style: TextStyle(
                      color: strengthColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomTextFieldComponent(hintText: 'Confirm Password',isPassword: true,textController:confirmPasswordController),
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    passwordsMatch
                        ? Icons.check_circle
                        : Icons.cancel,
                    color: passwordsMatch
                        ? Colors.green
                        : Colors.red,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    passwordsMatch
                        ? "Passwords match"
                        : "Passwords do not match",
                    style: TextStyle(
                      color: passwordsMatch
                          ? Colors.green
                          : Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Password Requirements",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 18),
                    ...passwordRules.map(
                          (rule) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: 14,
                        ),
                        child: PasswordRequirementTile(
                          title: rule["title"],
                          completed: rule["completed"],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Obx(() {
                return authViewModel.changePasswordObserver.value.maybeWhen(
                  loading: (dz) => const CircularProgressIndicator(),
                  orElse: () => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CustomGradientButton(
                      title: "Update password",
                      onTap: () {
                        if(hasMinLength &&
                            hasUpperCase &&
                            hasNumber &&
                            hasSpecial &&
                            passwordsMatch){
                          authViewModel.changePassword(null, currentPasswordController.text ?? "", newPasswordController.text ?? "");
                        }
                        else if(!passwordsMatch){
                          Get.showCustomSnackBar(title: 'Error', message: "Password Mismatch");
                        }
                      },
                    ),
                  ),
                );
              })
              ,
            ],
          ),
        ),
      ),
    );
  }
  void validatePassword(String value) {
    setState(() {
      hasMinLength = value.length >= 8;

      hasUpperCase = RegExp(r'[A-Z]').hasMatch(value);

      hasNumber = RegExp(r'[0-9]').hasMatch(value);

      hasSpecial = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value);

      passwordsMatch =
          value == confirmPasswordController.text;

      int score = 0;

      if (hasMinLength) score++;
      if (hasUpperCase) score++;
      if (hasNumber) score++;
      if (hasSpecial) score++;

      passwordStrength = score / 4;

      if (score <= 1) {
        strengthText = "Weak";
        strengthColor = Colors.red;
      } else if (score == 2 || score == 3) {
        strengthText = "Medium";
        strengthColor = Colors.orange;
      } else {
        strengthText = "Strong";
        strengthColor = Colors.green;
      }

      passwordRules[0]["completed"] = hasMinLength;
      passwordRules[1]["completed"] = hasUpperCase;
      passwordRules[2]["completed"] = hasNumber;
      passwordRules[3]["completed"] = hasSpecial;
    });
  }

  void validateConfirmPassword(String value) {
    setState(() {
      passwordsMatch =
          value == newPasswordController.text;
    });
  }
}

class PasswordRequirementTile extends StatelessWidget {
  final String title;
  final bool completed;

  const PasswordRequirementTile({
    super.key,
    required this.title,
    required this.completed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          completed
              ? Icons.check_circle
              : Icons.radio_button_unchecked,
          color: completed
              ? const Color(0xff32B768)
              : Colors.grey.shade400,
          size: 18,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: completed
                  ? Colors.black87
                  : Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}