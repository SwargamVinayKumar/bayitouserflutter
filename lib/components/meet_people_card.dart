import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/responseModels/user_response_model.dart';
import '../utils/custom_color.dart';
import 'custom_network_image.dart';

class MeetPeopleCard extends StatelessWidget {
  final UserModel? user;
  final VoidCallback onTap;
  final Color ctnColor;
  final Color titleColor;


  const MeetPeopleCard({
    super.key,
    this.user,
    required this.onTap,
    this.ctnColor = CustomColors.primary,
    this.titleColor = CustomColors.secondary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(10),
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
                      color: titleColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user?.location?.address2 ?? "",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: titleColor.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user?.designations?.first.description ?? "",
                    style: GoogleFonts.sora(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: titleColor.withOpacity(0.9),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: CustomColors.secondary,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Online",
                        style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.secondary,
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
