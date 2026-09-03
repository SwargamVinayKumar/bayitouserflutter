import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/custom_color.dart';

class ReservationCafeCard extends StatelessWidget {
  final String image;
  final String cafeName;
  final String location;
  final String date;
  final String time;
  final String table;
  final VoidCallback onTap;
  final Color ctnColor;
  final Color titleColor;

  const ReservationCafeCard({
    super.key,
    required this.image,
    required this.cafeName,
    required this.location,
    required this.date,
    required this.time,
    required this.table,
    required this.onTap,
    this.ctnColor = CustomColors.primary,
    this.titleColor = CustomColors.secondary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ctnColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: titleColor.withOpacity(0.4),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: SizedBox(
                width: 90,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cafeName,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: titleColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    location,
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: titleColor.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Text(
                        date,
                        style:  GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: titleColor,
                        ),
                      ),
                      const SizedBox(width: 14),
                      Text(
                        time,
                        style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: titleColor.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        table,
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: titleColor.withOpacity(0.6),
                        ),
                      ),
                      CustomGradientButton(title: "View", onTap: onTap,height: 35,width: 100,fontSize: 14,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}