import 'package:flutter/material.dart';

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
    this.gradientColors = const [
      Color(0xffFF7B54),
      Color(0xffFF4D6D),
    ],
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
              style: TextStyle(
                color: Colors.white,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}