import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/components/custom_textfield.dart';
import 'package:bayitouser/pages/sign_up_page.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_page.dart';
import 'package:get/get.dart';



class SignInPage extends StatelessWidget {

  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                CircleAvatar(
                  radius: 80,
                  backgroundColor: CustomColors.secondary,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      "assets/images/bayitoLogo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const CustomTextFieldComponent(hintText: "Email/MobileNumber"),
                const SizedBox(height: 8),
                const CustomTextFieldComponent(hintText: "Password",isPassword: true,),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: CustomGradientButton(title: "Login",
                      fontSize: 18,
                      onTap: (){
                      Get.offAll(() =>  const MainPage());
                  }),
                ),
                const SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: GoogleFonts.sora(
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
                            style: GoogleFonts.plusJakartaSans(
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
