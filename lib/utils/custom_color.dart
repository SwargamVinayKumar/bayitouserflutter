import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();

  static const List<Color> mainGradient = [
    Color(0xff134E5E),
    Color(0xff0C6E5B),
    Color(0xff071B1B),
  ];
  static const LinearGradient mainGradientColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: mainGradient,
  );

  static const List<Color> secondaryGradient = [
    Color(0xffFF7B54),
    Color(0xffFF4D6D),
  ];

  static const Color secondary =  Color(0xFF202920);
  static const Color gray = Color(0xFFF9F9F9);
  static const Color darkGray = Color(0xFFC7C7C7);
  static const Color darkBlack = Color(0xFF212121);
  static const Color midBlack =  Color(0xFF636363);
  static const Color white = Color(0xFFFFFFFF);
  static const Color midGray =  Color(0xFF666666);

}