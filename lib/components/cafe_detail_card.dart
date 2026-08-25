import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CafeDetailCard extends StatelessWidget {

  final IconData? icon;
  final String title;
  final bool isChip;
  final VoidCallback? onTap;

  const CafeDetailCard({
    super.key,
    this.icon,
    required this.title,
    this.isChip = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isChip
          ? Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: CustomColors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: CustomColors.secondary.withOpacity(0.06),
              blurRadius: 10,
            ),
          ],
        ),
        child: Text(
          title,
          style: GoogleFonts.sora(
              fontWeight: FontWeight.w600,
          ),
        ),
      ) : Column(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              color: CustomColors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: CustomColors.secondary.withOpacity(0.06),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Icon(
              icon,
              color: CustomColors.secondary.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style:GoogleFonts.sora(
                fontWeight: FontWeight.w500,
                color: CustomColors.secondary.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
