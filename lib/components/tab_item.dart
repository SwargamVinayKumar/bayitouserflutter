import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabItem extends StatelessWidget {

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const TabItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 250,
        ),
        height: 42,
        width: 110,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: isSelected ? const LinearGradient(
            colors: CustomColors.secondaryGradient,
          )
              : null,
          color: isSelected
              ? null
              : CustomColors.white.withOpacity(0.06),
        ),
        child: Text(title,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            fontWeight:  isSelected
                ? FontWeight.w700
                : FontWeight.w500,
            color:  CustomColors.white,
          ),
        ),
      ),
    );
  }
}