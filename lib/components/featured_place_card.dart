import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/responseModels/outlet_response_model.dart';
import '../utils/custom_color.dart';
import 'custom_network_image.dart';

class FeaturedPlaceCard extends StatelessWidget {
  final OutletModel? outlet;

  const FeaturedPlaceCard({
    super.key,
    this.outlet,
  });

  @override
  Widget build(BuildContext context) {
    final businessName = outlet?.businessName;
    final businessLogo = outlet?.businessLogo;
    final address1 = outlet?.location?.address1;
    final address2 = outlet?.location?.address2;
    final location = [
      if (address1 != null && address1.isNotEmpty) address1,
      if (address2 != null && address2.isNotEmpty) address2,
    ].join(", ");
    final hasImage =
        businessLogo != null && businessLogo.isNotEmpty;
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.secondary.withOpacity(0.08),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: CustomColors.secondary.withOpacity(0.1),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (hasImage)
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 14 / 9,
                    child: CustomNetworkImage(
                      imageUrl: businessLogo,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),


                    // Image.network(
                    //   businessLogo,
                    //   fit: BoxFit.cover,
                    //   width: double.infinity,
                    //   errorBuilder: (
                    //       context,
                    //       error,
                    //       stackTrace,
                    //       ) {
                    //     return const SizedBox();
                    //   },
                    // ),
                  ),
                ],
              ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (businessName != null &&
                      businessName.isNotEmpty)
                    Text(
                      businessName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: CustomColors.secondary,
                      ),
                    ),

                  if (location.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.orange,
                          size: 18,
                        ),
                        const SizedBox(width: 2),
                        Expanded(
                          child: Text(
                            location,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.sora(
                              color: CustomColors.secondary
                                  .withOpacity(0.7),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



