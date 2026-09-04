import 'package:bayitouser/components/cafe_detail_card.dart';
import 'package:bayitouser/components/custom_action_button.dart';
import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../components/custom_network_image.dart';
import '../models/responseModels/outlet_response_model.dart';
import '../view_models/outlet_view_model.dart';
import 'package:get/get.dart';

import 'book_table_page.dart';

class CafeDetailsPage extends StatelessWidget {
  final String outletId;
  final bool showButton;

  final OutletViewModel outletViewModel = Get.put(OutletViewModel());

   CafeDetailsPage({
    super.key,
    required this.outletId,
    this.showButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        outletViewModel.fetchOutletDetails(outletId);
      },
      child: Scaffold(
        backgroundColor: CustomColors.primary,
        body: Obx(() {
          return outletViewModel.fetchOutletDetailObserver.value.when(
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error) => Center(
              child: Text(error),
            ),
            success: (response) {
              final outlet = (response as OutletDetailsResponseModel).data;
              final todaySlot = getTodaySlot(outlet?.daySlots);
              return Stack(
                children: [
                  SizedBox(
                    height: 330,
                    width: double.infinity,
                    child: CustomNetworkImage(
                      imageUrl: outlet?.businessLogo ?? "",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          CustomActionButton(
                            icon: Icons.arrow_back_ios_new_rounded,
                            onTap: Get.back,
                          ),
                          CustomActionButton(
                            icon: Icons.favorite_border_rounded,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height:
                      MediaQuery.of(context).size.height * 0.64,
                      width: double.infinity,
                      padding: const EdgeInsets.all(22),
                      decoration: const BoxDecoration(
                        color: Color(0xffF7F3F0),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(34),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              outlet?.businessName ?? "No Name",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: CustomColors.secondary,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "${outlet?.location?.address1 ?? ""}, ${outlet?.location?.address2 ?? ""}",
                              style: GoogleFonts.sora(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            const SizedBox(height: 14),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star_rounded,
                                  color: Colors.orange,
                                  size: 22,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "4.5",
                                  style: GoogleFonts.sora(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "(0 reviews)",
                                  style: GoogleFonts.sora(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 14),
                            Row(
                              children: [
                                Text(
                                  todaySlot?.status == true ? "Open Now" : "Closed",
                                  style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w700,
                                    color: todaySlot?.status == true ? Colors.green : Colors.red,
                                  ),
                                ),
                                if (todaySlot != null) ...[
                                  const SizedBox(width: 8),
                                  Text(
                                    "• ${formatTime(todaySlot.startTime)} - ${formatTime(todaySlot.endTime)}",
                                    style: GoogleFonts.sora(
                                      fontWeight: FontWeight.w600,
                                      color: CustomColors.secondary.withOpacity(0.7),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                            const SizedBox(height: 28),
                            const Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                CafeDetailCard(
                                  icon: Icons.call_outlined,
                                  title: "Call",
                                ),
                                CafeDetailCard(
                                  icon:
                                  Icons.location_on_outlined,
                                  title: "Direction",
                                ),
                                CafeDetailCard(
                                  icon: Icons.share_outlined,
                                  title: "Share",
                                ),
                                CafeDetailCard(
                                  icon:
                                  Icons.bookmark_border_rounded,
                                  title: "Save",
                                ),
                              ],
                            ),

                            const SizedBox(height: 28),
                            Text(
                              "About",
                              style:
                              GoogleFonts.plusJakartaSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: CustomColors.darkBlack,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              outlet?.aboutBusiness ??
                                  "No description available.",
                              style: GoogleFonts.sora(
                                fontSize: 14,
                                height: 1.5,
                                color: CustomColors.secondary
                                    .withOpacity(0.8),
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              "Highlights",
                              style:
                              GoogleFonts.plusJakartaSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: CustomColors.darkBlack,
                              ),
                            ),
                            const SizedBox(height: 14),
                            const Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                CafeDetailCard(
                                  title: "Free WiFi",
                                  isChip: true,
                                ),
                                CafeDetailCard(
                                  title: "Live Music",
                                  isChip: true,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            if (showButton)
                              CustomGradientButton(
                                title: "Book Table",
                                onTap: () {
                                  Get.to(() => BookTablePage(outletModel: outlet));
                                },
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            init: () => const SizedBox(),
          );
        }),
      ),
    );
  }
  String formatTime(int? milliseconds) {
    if (milliseconds == null) return "--:--";

    final totalMinutes = milliseconds ~/ 60000;
    final hour = totalMinutes ~/ 60;
    final minute = totalMinutes % 60;

    final date = DateTime(2026, 1, 1, hour, minute);
    return DateFormat("hh:mm a").format(date);
  }

  DaySlot? getTodaySlot(List<DaySlot>? daySlots) {
    if (daySlots == null) return null;

    final today = DateFormat("EEEE").format(DateTime.now()).toLowerCase();

    try {
      return daySlots.firstWhere(
            (slot) => slot.day?.toLowerCase() == today,
      );
    } catch (_) {
      return null;
    }
  }
}

