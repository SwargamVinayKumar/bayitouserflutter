import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/components/custom_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/custom_color.dart';

class ReservationOutletCard extends StatelessWidget {
  final String? bookingType;
  final String image;
  final String OutletName;
  final String location;
  final String date;
  final String time;
  final String table;
  final VoidCallback onTap;
  final Color ctnColor;
  final Color titleColor;

  const ReservationOutletCard({
    super.key,
    this.bookingType = "classic",
    required this.image,
    required this.OutletName,
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
                child: CustomNetworkImage(
                  imageUrl: image,
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
                    OutletName.capitalizeFirst ?? "",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: titleColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    location,
                    style: TextStyle(
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
                        style:  TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: titleColor,
                        ),
                      ),
                      const SizedBox(width: 14),
                      Text(
                        time,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: titleColor.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _buildStatusChip(bookingType),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        (table ?? "").capitalizeFirst ?? "",
                        style: TextStyle(
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

  Widget _buildStatusChip(String? status) {
    Color color = Colors.orange;
    if (status == "professional") color = Colors.green;
    if (status == "classic") color = Colors.orange;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color),
      ),
      child: Text(
        status?.toUpperCase().replaceAll("_", " ") ?? "",
        style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: color),
      ),
    );
  }

}