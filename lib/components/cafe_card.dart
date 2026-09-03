import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/responseModels/outlet_response_model.dart';
import 'custom_network_image.dart';

class CafeCard extends StatelessWidget {
  final OutletModel? outlet;
  final VoidCallback? onTap;
  final Color ctnColor;
  final Color titleColor;

  const CafeCard({
    super.key,
    this.outlet,
    this.onTap,
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
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: SizedBox(
                width: 95,
                height: double.infinity,
                child: CustomNetworkImage(
                  imageUrl: outlet?.businessLogo ?? "",
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
                    children: [
                      Expanded(
                        child: Text(
                          outlet?.businessName ?? "",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: titleColor,
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
                            "4.5",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              color: titleColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Cafe • ${outlet?.location?.address1 ?? ""}, ${outlet?.location?.address2 ?? ""}",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      color: titleColor.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    outlet?.aboutBusiness ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.sora(
                      fontSize: 13,
                      color: titleColor.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 14),
                  CustomGradientButton(
                    title: "Book Table",
                    onTap: onTap ?? () {},
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
