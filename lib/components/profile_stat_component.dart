import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/custom_color.dart';

class ProfileStatComponent extends StatelessWidget {

  final String count;
  final String title;

  const ProfileStatComponent({
    super.key,
    required this.count,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: CustomColors.white.withOpacity(0.85),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: GoogleFonts.sora(
            fontSize: 14,
            color: CustomColors.white.withOpacity(0.85),
          ),
        ),
      ],
    );
  }
}
