import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/custom_color.dart';

class SectionTitleItem extends StatelessWidget {

  final String title;
  final double? fontSize;
  const SectionTitleItem({super.key,required this.title, this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: GoogleFonts.plusJakartaSans(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: CustomColors.white,
      ),
    );
  }
}
