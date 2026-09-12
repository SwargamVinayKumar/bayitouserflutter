import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/models/responseModels/booking_response_model.dart';
import 'package:bayitouser/utils/auth_utils.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/responseModels/user_response_model.dart';
import '../utils/custom_color.dart';
import 'custom_network_image.dart';

class MeetPeopleCard extends StatelessWidget {
  final BookingModel? booking;
  final VoidCallback onTap;
  final Color ctnColor;
  final Color titleColor;


  const MeetPeopleCard({
    super.key,
    this.booking,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: CustomNetworkImage(
                    imageUrl: booking?.userId?.profilePic ?? "",
                    width: 95,
                    height: 95,
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
                        booking?.userId?.name ?? "",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: titleColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        (booking?.userId?.designations?.map((designation) => designation.name ?? "") ?? []).join(","),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: titleColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        booking?.userId?.dob ?? "",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: titleColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        booking?.userId?.gender ?? "",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: titleColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Charges : ${booking?.userId?.charges?.perHour ?? ""}/hr",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: titleColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 8),
            DottedLine(dashColor: CustomColors.darkGray),
            const SizedBox(height: 8),
            Text(
              booking?.outletId?.businessName ?? "",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: titleColor,
              ),
            ),
            Text(
              booking?.outletId?.location?.address1 ?? "",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: titleColor,
              ),
            ),
            Text(
              "5Km away",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: titleColor,
              ),
            ),
            const SizedBox(height: 8),
            DottedLine(dashColor: CustomColors.darkGray),
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
                // Text(
                //   "Available at ${AuthUtils.formatDate(booking.checkIn)}",
                //   style: TextStyle(
                //     fontSize: 12,
                //     fontWeight: FontWeight.w500,
                //     color: CustomColors.secondary,
                //   ),
                // ),
                Text(
                  "Online",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.secondary,
                  ),
                ),
                Spacer(),
                CustomGradientButton(
                  title: "Connect",
                  onTap: onTap,
                  width: 80,
                  height: 45,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
