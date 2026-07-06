import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/custom_color.dart';

class CustomGradientButton extends StatelessWidget {

  final String title;
  final VoidCallback onTap;
  final double height;
  final double width;
  final double borderRadius;
  final double fontSize;
  final FontWeight fontWeight;
  final List<Color> gradientColors;

  const CustomGradientButton({
    super.key,
    required this.title,
    required this.onTap,
    this.height = 50,
    this.width = double.infinity,
    this.borderRadius = 14,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w700,
    this.gradientColors = CustomColors.secondaryGradient,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          elevation: 0,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient: LinearGradient(
              colors: gradientColors,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              title,
              style: GoogleFonts.plusJakartaSans(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: CustomColors.white,
              )
            ),
          ),
        ),
      ),
    );
  }
}