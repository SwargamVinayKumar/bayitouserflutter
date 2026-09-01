import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/responseModels/outlet_response_model.dart';
import 'custom_network_image.dart';

class CafeCard extends StatelessWidget {
  final OutletModel? outlet;
  final VoidCallback? onTap;

  const CafeCard({
    super.key,
    this.outlet,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color:  CustomColors.secondary.withOpacity(0.03),
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
              child: SizedBox(
                width: 95,
                height: double.infinity,
                child: CustomNetworkImage(
                  imageUrl: outlet?.businessLogo ?? "",
                  fit: BoxFit.cover,
                ),


                // Image.network(
                //   outlet?.businessLogo ?? "",
                //   fit: BoxFit.cover,
                //   errorBuilder: (_, __, ___) =>
                //   const Icon(Icons.image, size: 40),
                // ),
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
                            color: CustomColors.primary,
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
                              color: CustomColors.primary,
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
                      color: CustomColors.primary.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    outlet?.aboutBusiness ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.sora(
                      fontSize: 13,
                      color: CustomColors.primary.withOpacity(0.7),
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
