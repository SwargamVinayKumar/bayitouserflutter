import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/responseModels/user_response_model.dart';
import '../utils/custom_color.dart';
import 'custom_network_image.dart';

class MeetPeopleCard extends StatelessWidget {
  final UserModel? user;
  final VoidCallback onTap;


  const MeetPeopleCard({
    super.key,
    this.user,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: CustomColors.secondary.withOpacity(0.03),
        border: Border.all(
          color: CustomColors.secondary.withOpacity(0.08),
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
              child: CustomNetworkImage(
                imageUrl: user?.profilePic ?? "",
                width: 95,
                height: 120,
                fit: BoxFit.cover,
                borderRadius: 18,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    user?.designations?.first.name ?? "Unknown",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: CustomColors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user?.location?.address2 ?? "",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.primary.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user?.designations?.first.description ?? "",
                    style: GoogleFonts.sora(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.primary.withOpacity(0.9),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: CustomColors.secondary.withOpacity(0.6),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Online",
                        style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.secondary.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            CustomGradientButton(
              title: "Connect",
              onTap: onTap,
              width: 80,
              height: 45,
            ),
          ],
        ),
      ),
    );
  }
}
