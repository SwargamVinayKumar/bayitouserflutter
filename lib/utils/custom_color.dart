import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();

  static const List<Color> primaryGradient = [
    Color(0xFF7C8F32),
    Color(0xFFA39D5A),
    Color(0xFFA18C77),
    Color(0xFFC5AD95),

    // Color(0xffdc5512),
    // Color(0xffa30c0f),

    Color(0xff55069a),
    Color(0xffd625a6),

  ];
  static const LinearGradient primaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: primaryGradient,
  );
  static const Color secondary =  Color(0xFF202920);
  static const Color gray = Color(0xFFF9F9F9);
  static const Color darkGray = Color(0xFFC7C7C7);
  static const Color darkBlack = Color(0xFF212121);
  static const Color midBlack =  Color(0xFF636363);
  static const Color white = Color(0xFFFFFFFF);
  static const Color midGray =  Color(0xFF666666);

  static const List<Color> mainGradient = [
    Color(0xff134E5E),
    Color(0xff0C6E5B),
    Color(0xff071B1B),


    // Color(0xff064E3B),
    // Color(0xff065F46),
    // Color(0xff022C22),

  ];
  static const LinearGradient mainGradientColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: mainGradient,
  );
}