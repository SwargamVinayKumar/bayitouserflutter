import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CafeCard extends StatelessWidget {
  final String image;
  final String cafeName;
  final String category;
  final String location;
  final double rating;
  final double distance;
  final String openTime;
  final VoidCallback onTap;

  const CafeCard({
    super.key,
    required this.image,
    required this.cafeName,
    required this.category,
    required this.location,
    required this.rating,
    required this.distance,
    required this.openTime,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            CustomColors.white.withOpacity(0.08),
            CustomColors.white.withOpacity(0.03),
          ],
        ),
        border: Border.all(
          color: CustomColors.white.withOpacity(0.08),
        ),
        boxShadow: [
          BoxShadow(
            color: CustomColors.darkBlack.withOpacity(0.3),
            blurRadius: 25,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: SizedBox(
                width: 95,
                height: double.infinity,
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          cafeName,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: CustomColors.white,
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.amber,
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            rating.toString(),
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              color: CustomColors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 4),
                  Text(
                    "$category  •  $location",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      color: CustomColors.white.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: CustomColors.white.withOpacity(0.7),
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "$distance km away",
                        style:GoogleFonts.sora(
                          fontSize: 14,
                          color: CustomColors.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          "Open • Closes $openTime",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  CustomGradientButton(title: "Book Table", onTap: onTap),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}