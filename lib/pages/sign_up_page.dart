import 'package:bayitouser/pages/main_page.dart';
import 'package:bayitouser/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../components/custom_textfield.dart';
import '../utils/custom_color.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                  CustomTextFieldComponent(hintText: "Full Name"),
                  SizedBox(height: 8),
                  CustomTextFieldComponent(hintText: "Email Id"),
                  SizedBox(height: 8),
                  CustomTextFieldComponent(hintText: "Mobile Number"),
                  SizedBox(height: 8),
                  CustomTextFieldComponent(hintText: "Designation"),
                  SizedBox(height: 8),
                  CustomTextFieldComponent(hintText: "Password",isPassword: true,),
                  SizedBox(height: 8),
                  CustomTextFieldComponent(hintText: "Confirm Password",isPassword: true,),
                  SizedBox(height: 24),
                  CustomButton(text: "SignUp", onPressed: (){
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
                      text: "Already have an account? ",
                      style: TextStyle(
                        color: CustomColors.darkBlack,
                        fontSize: 16,
                      ),
                      children: [
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignInPage(),
                                ),
                                    (route) => false,
                              );
                            },
                            child: Text(
                              "SignIn",
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
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
