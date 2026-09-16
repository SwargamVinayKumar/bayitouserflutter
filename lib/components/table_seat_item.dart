import 'package:bayitouser/components/custom_network_image.dart';
import 'package:bayitouser/components/image_carousel_component.dart';
import 'package:bayitouser/utils/app_styles.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/view_models/booking_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/responseModels/booking_response_model.dart';
import '../models/responseModels/outlet_response_model.dart';
import '../models/responseModels/table_response_model.dart';
import '../pages/rating_reviews_page.dart';
import 'package:get/get.dart';

import '../utils/progress_dialog.dart';
import 'custom_gradient_button.dart';

class TableItemWidgetPrime extends StatelessWidget {
  final TableModel? table;
  final RatingAndReviewModel? ratingAndReviewModel;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback onViewRating;
  final bool? showRating;


  const TableItemWidgetPrime({
    super.key,
    required this.table,
    this.ratingAndReviewModel,
    required this.isSelected,
    required this.onTap,
    required this.onViewRating,
    this.showRating = true
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        // padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? CustomColors.secondary : CustomColors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? CustomColors.secondary : Colors.white24,
            width: 2,
          ),
          boxShadow: isSelected ? [
            BoxShadow(
              color: CustomColors.secondary.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 4),
            )
          ] : [],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (table?.images != null && table?.images?.isNotEmpty == true)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ImageCarouselComponent(
                      imageUrls: table?.images ?? [],
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    if (ratingAndReviewModel?.review != null && ratingAndReviewModel?.review?.isNotEmpty == true)
                      Positioned(
                        top: 12,
                        left: 12,
                        right: 12,
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.85),
                                const Color(0xFF9C7C38).withOpacity(0.9), // Deep gold
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: const Color(0xFFFFD700), width: 1.5), // Gold border
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/star.png",
                                    width: 16,
                                    height: 16,
                                    color: const Color(0xFFFFD700), // Tint star to gold
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    "${table?.rating ?? 0}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.verified_rounded,
                                    color: Color(0xFFFFD700),
                                    size: 16,
                                  )
                                ],
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "${ratingAndReviewModel?.review}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              )
            else
              Column(
                children: [
                  Icon(
                    Icons.table_restaurant_rounded,
                    color: isSelected ? Colors.white : CustomColors.secondary,
                    size: 40,
                  ),
                  if(showRating == true)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.star_rounded, color: Colors.orange, size: 18),
                          const SizedBox(width: 4),
                          Text(
                            "${table?.rating ?? 0}",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: isSelected ? Colors.white : CustomColors.secondary,
                            ),
                          )
                        ],
                      ),
                    ),
                ],
              ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(children: [
                Text(
                  "${table?.tableNumber}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: isSelected ? Colors.white : CustomColors.secondary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "${table?.seatCapacity} Seater",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? Colors.white70 : CustomColors.secondary.withOpacity(0.7),
                  ),
                ),
              ],),
            )

          ],
        ),
      ),
    );
  }
}

class TableItemWidget extends StatelessWidget {
  final TableModel table;
  final bool isSelected;
  final VoidCallback onTap;

  const TableItemWidget({
    super.key,
    required this.table,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? CustomColors.secondary : CustomColors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? CustomColors.secondary : Colors.white24,
            width: 2,
          ),
          boxShadow: isSelected ? [
            BoxShadow(
              color: CustomColors.secondary.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 4),
            )
          ] : [],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (table.images != null && table.images!.isNotEmpty)
               ClipRRect(
                 borderRadius: BorderRadius.circular(12),
                 child: ImageCarouselComponent(
                   imageUrls: table.images ?? [],
                   height: 60,
                   width: 60,
                   fit: BoxFit.cover,
                 ),
               )
            else
              Icon(
                Icons.table_restaurant_rounded,
                color: isSelected ? Colors.white : CustomColors.secondary,
                size: 40,
              ),
            const SizedBox(height: 8),
            Text(
              "Table ${table.tableNumber}",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: isSelected ? Colors.white : CustomColors.secondary,
              ),
            ),
            Text(
              "${table.seatCapacity} Seater",
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? Colors.white70 : CustomColors.secondary.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeatItemWidget extends StatelessWidget {
  final SeatModel? seat;
  final bool isSelected;
  final bool isBooked;
  final VoidCallback onTap;

  const SeatItemWidget({
    super.key,
    required this.seat,
    required this.isSelected,
    required this.isBooked,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color getBgColor() {
      if (isBooked) return Colors.grey.withOpacity(0.2);
      if (isSelected) return CustomColors.secondary;
      return CustomColors.white.withOpacity(0.1);
    }

    Color getContentColor() {
      if (isBooked) return Colors.grey;
      if (isSelected) return Colors.white;
      return CustomColors.secondary;
    }

    return GestureDetector(
      onTap: isBooked ? null : onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: getBgColor(),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? CustomColors.secondary : (isBooked ? Colors.transparent : Colors.white24),
            width: 1.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // if (seat.images != null && seat.images!.isNotEmpty)
            //   ClipRRect(
            //     borderRadius: BorderRadius.circular(12),
            //     child: ImageCarouselComponent(
            //       imageUrls: seat.images ?? [],
            //       height: 60,
            //       width: 60,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            Icon(
              Icons.chair_rounded,
              color: getContentColor(),
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              seat?.seatNumber ?? "" + "(${seat?.seatType ?? ""})",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: getContentColor(),
              ),
            ),
            if (seat?.charges?.perHour != null)
              Text(
                "₹${seat?.charges!.perHour}/hr",
                style: TextStyle(
                  fontSize: 10,
                  color: getContentColor().withOpacity(0.8),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

Widget buildSectionHeader(String title, IconData icon) {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              CustomColors.secondary.withOpacity(0.2),
              CustomColors.secondary.withOpacity(0.05),
            ],
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: CustomColors.secondary,
          size: 18,
        ),
      ),
      const SizedBox(width: 10),
      Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: CustomColors.secondary,
        ),
      ),
    ],
  );
}


Widget buildPriceSummary(AvailabilityBookingDetails details) {
  return Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          CustomColors.secondary.withOpacity(0.05),
          CustomColors.secondary.withOpacity(0.02),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: CustomColors.secondary.withOpacity(0.1),
        width: 1.5,
      ),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: CustomColors.secondary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.receipt_long_rounded,
                color: CustomColors.secondary,
                size: 20,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              "Booking Summary",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: CustomColors.secondary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        buildPriceRow(
          "Base Charge",
          "₹${details.perHourCharge}/hr",
          Icons.currency_rupee_rounded,
        ),
        const SizedBox(height: 10),
        buildPriceRow(
          "Professional Charges",
          "₹${details.professionalCharge}/hr",
          Icons.currency_rupee_rounded,
        ),
        const SizedBox(height: 10),
        buildPriceRow(
          "Duration",
          "${details.duration} Hours",
          Icons.timer_rounded,
        ),
        const Divider(height: 24, color: CustomColors.secondary),
        buildPriceRow(
          "Total Amount",
          "₹${details.totalAmount}",
          Icons.payments_rounded,
          isTotal: true,
        ),
      ],
    ),
  );
}


Widget buildUserDetails(BookingModel? booking){
  return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: CustomColors.secondary.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child:Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: CustomNetworkImage(
              imageUrl: booking?.userId?.profilePic ?? "",
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
                  booking?.userId?.name ?? "",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: CustomColors.textColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  (booking?.userId?.designations?.map((designation) => designation.name ?? "") ?? []).join(","),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: CustomColors.textColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  booking?.userId?.dob ?? "",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.textColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  booking?.userId?.gender ?? "",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.textColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Charges : ${booking?.userId?.charges?.perHour ?? ""}/hr",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: CustomColors.textColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Mobile : ${booking?.userId?.mobile ?? ""}",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: CustomColors.textColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Email : ${booking?.userId?.email ?? ""}",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: CustomColors.textColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
        ],
      ) );
}

Widget buildPriceRow(String label, String value, IconData icon, {bool isTotal = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Icon(
            icon,
            color: isTotal ? CustomColors.secondary : Colors.grey.shade600,
            size: isTotal ? 18 : 16,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: isTotal ? 16 : 14,
              fontWeight: isTotal ? FontWeight.w700 : FontWeight.w500,
              color: isTotal ? CustomColors.secondary : Colors.grey.shade700,
            ),
          ),
        ],
      ),
      Text(
        value,
        style: TextStyle(
          fontSize: isTotal ? 20 : 15,
          fontWeight: isTotal ? FontWeight.w800 : FontWeight.w600,
          color: isTotal ? CustomColors.secondary : Colors.grey.shade800,
        ),
      ),
    ],
  );
}

Widget buildOutletHeader(dynamic booking) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: CustomColors.secondary.withOpacity(0.05),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CustomNetworkImage(
            imageUrl: booking.outletId?.businessLogo ?? "",
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                booking.outletId?.businessName ?? "",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: CustomColors.secondary),
              ),
              const SizedBox(height: 4),
              Text(
                booking.outletId?.location?.address1 ?? "",
                style: TextStyle(fontSize: 14, color: CustomColors.secondary.withOpacity(0.7)),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget buildOutletInfo(OutletModel? outletModel) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          CustomColors.secondary,
          CustomColors.secondary.withOpacity(0.8),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(24),
      boxShadow: [
        BoxShadow(
          color: CustomColors.secondary.withOpacity(0.3),
          blurRadius: 20,
          offset: const Offset(0, 8),
        ),
      ],
    ),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white.withOpacity(0.3), width: 2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: CustomNetworkImage(
              imageUrl: outletModel?.businessLogo ?? "",
              width: 75,
              height: 75,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                outletModel?.name ?? "Outlet Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: -0.3,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: Colors.white.withOpacity(0.8),
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      outletModel?.location?.address1 ?? "Location not available",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Colors.amber.shade300,
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "4.8",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "(124 reviews)",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildSectionTitle(String title) {
  return Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: CustomColors.secondary));
}

Widget buildStatusChip(String status) {
  Color color = Colors.orange;
  if (status == "confirmed" || status == "completed") color = Colors.green;
  if (status == "cancelled") color = Colors.red;

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: color.withOpacity(0.1),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: color),
    ),
    child: Text(
      status.toUpperCase().replaceAll("_", " "),
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color),
    ),
  );
}

Widget buildInfoCard(List<Widget> children) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4))],
    ),
    child: Column(children: children),
  );
}

Widget infoRow(IconData icon, String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        Icon(icon, size: 20, color: CustomColors.secondary.withOpacity(0.7)),
        const SizedBox(width: 12),
        Text(label, style: TextStyle(fontSize: 14, color: CustomColors.secondary.withOpacity(0.7))),
        const Spacer(),
        Text(value, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: CustomColors.secondary)),
      ],
    ),
  );
}
