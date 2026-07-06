import 'package:bayitouser/pages/main_page.dart';
import 'package:bayitouser/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/custom_gradient_button.dart';
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
          gradient: CustomColors.mainGradientColor,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CustomGradientButton(title: "SignUp",
                        fontSize: 18,
                        onTap: (){
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ),
                            (route) => false,
                      );
                    }),
                  ),
                  SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.white,
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
                              style: GoogleFonts.plusJakartaSans(
                                foreground: Paint()
                                  ..shader = LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: CustomColors.secondaryGradient,
                                  ).createShader(
                                    const Rect.fromLTWH(60, 60, 140, 40),
                                  ),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
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
