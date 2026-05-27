import 'package:bayitouser/components/custom_button.dart';
import 'package:bayitouser/components/custom_textfield.dart';
import 'package:bayitouser/pages/sign_up_page.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';


class SignInPage extends StatelessWidget {

  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
         decoration: BoxDecoration(
            gradient: CustomColors.primaryGradientColor,
          ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(
                      "assets/images/bayitoLogo.jpeg",
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomTextFieldComponent(hintText: "Email/MobileNumber"),
                  SizedBox(height: 8),
                  CustomTextFieldComponent(hintText: "Password",isPassword: true,),
                  SizedBox(height: 24),
                  CustomButton(text: "Login", onPressed: (){
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                          (route) => false,
                    );
                  },buttonColor: CustomColors.secondary),
                  SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: CustomColors.darkBlack,
                        fontSize: 16,
                      ),
                      children: [
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: CustomColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
