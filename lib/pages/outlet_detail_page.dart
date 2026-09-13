import '../shimmer/outlet_detail_shimmer.dart';
import 'package:bayitouser/components/outlet_detail_card.dart';
import 'package:bayitouser/components/custom_action_button.dart';
import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/models/responseModels/table_response_model.dart';
import 'package:bayitouser/pages/rating_reviews_page.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../components/custom_lottie_loading.dart';
import '../components/custom_network_image.dart';
import '../components/empty_data_view.dart';
import '../components/table_seat_item.dart';
import '../models/responseModels/outlet_response_model.dart';
import '../utils/progress_dialog.dart';
import '../view_models/booking_view_model.dart';
import '../view_models/outlet_view_model.dart';
import 'book_table_page.dart';

class OutletDetailsPage extends StatelessWidget {
  final String outletId;
  final bool showButton;

  final OutletViewModel outletViewModel = Get.put(OutletViewModel());
  final BookingViewModel bookingViewModel = Get.put(BookingViewModel());

  OutletDetailsPage({
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
      onStart: (){
        bookingViewModel.getTables(outletId);
      },
      child: Scaffold(
        backgroundColor: CustomColors.primary,
        body: Obx(() {
          return outletViewModel.fetchOutletDetailsObserver.value.when(
            loading: (_) => const OutletDetailShimmer(),
            error: (error) => Center(
              child: Text(error),
            ),
            success: (response) {
              final outlet = (response as OutletDetailsResponseModel).data;
              final todaySlot = getTodaySlot(outlet?.daySlots);

              return Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: NestedScrollView(
                          headerSliverBuilder: (context, innerBoxIsScrolled) {
                            return [
                              SliverAppBar(
                                expandedHeight: 330,
                                floating: false,
                                pinned: true,
                                backgroundColor: Colors.transparent,
                                flexibleSpace: FlexibleSpaceBar(
                                  background: CustomNetworkImage(
                                    imageUrl: outlet?.businessLogo ?? "",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                leading: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CustomActionButton(
                                    icon: Icons.arrow_back_ios_new_rounded,
                                    onTap: Get.back,
                                  ),
                                ),
                                actions: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomActionButton(
                                      icon: outlet?.isFavorite == true ? Icons.favorite  : Icons.favorite_border_rounded,
                                      onTap: () {
                                         outletViewModel.updateFavouriteStatus(outletId, outlet?.isFavorite ?? false);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ];
                          },
                          body: Container(
                            padding: const EdgeInsets.all(22),
                            decoration: const BoxDecoration(
                              color: Color(0xffF7F3F0),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(34),
                              ),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    outlet?.businessName ?? "No Name",
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w800,
                                      color: CustomColors.secondary,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    "${outlet?.location?.address1 ?? ""}, ${outlet?.location?.address2 ?? ""}",
                                    style: TextStyle(
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
                                        "${outlet?.ratingCount ?? 0.0}",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        "(${outlet?.ratingCount} reviews)",
                                        style: TextStyle(
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
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: todaySlot?.status == true ? Colors.green : Colors.red,
                                        ),
                                      ),
                                      if (todaySlot != null) ...[
                                        const SizedBox(width: 8),
                                        Text(
                                          "• ${formatTime(todaySlot.startTime)} - ${formatTime(todaySlot.endTime)}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: CustomColors.secondary.withOpacity(0.7),
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                  const SizedBox(height: 28),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      OutletDetailCard(
                                        icon: Icons.call_outlined,
                                        title: "Call",
                                      ),
                                      OutletDetailCard(
                                        icon: Icons.location_on_outlined,
                                        title: "Direction",
                                      ),
                                      OutletDetailCard(
                                        icon: Icons.share_outlined,
                                        title: "Share",
                                      ),
                                      OutletDetailCard(
                                        icon: Icons.bookmark_border_rounded,
                                        title: "Save",
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 28),
                                  Text(
                                    "About",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: CustomColors.darkBlack,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    outlet?.aboutBusiness ?? "No description available.",
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: CustomColors.secondary.withOpacity(0.8),
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Text(
                                    "Highlights",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: CustomColors.darkBlack,
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  Wrap(
                                    spacing: 10,
                                    runSpacing: 10,
                                    children: outlet?.amenities?.map((ameniny) => OutletDetailCard(
                                      title: ameniny.name ?? "",
                                      isChip: true,
                                    )).toList() ?? [],
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    "Tables",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: CustomColors.darkBlack,
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  _buildTableSelection(outlet?.id ?? ""),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Obx(() => Visibility(
                        visible: bookingViewModel.selectedTable.value?.id.isNotEmpty == true,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: CustomGradientButton(
                            title: "Book Table",
                            onTap: () {
                              Get.to(() => BookTablePage(outletModel: outlet));
                            },
                          ),
                        ),
                      )),
                    ],
                  ),
                  Obx(() => outletViewModel.updateFavouritesObserver.value.maybeWhen(loading: (cds)  =>
                  const CustomLottieLoading(), orElse: () => const SizedBox()))
                ],
              );
            },
            init: () => const SizedBox(),
          );
        }),
      ),
    );
  }

  Widget _buildTableSelection(String outletId) {
    return Obx(() {
      return bookingViewModel.fetchTablesObserver.value.when(
        init: () => const SizedBox.shrink(),
        loading: (msg) => Center(
          child: Column(
            children: [
              ProgressDialog(),
              const SizedBox(height: 8),
              Text(
                "Loading tables...",
                style: TextStyle(
                  color: CustomColors.secondary,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        success: (data) {
          final tables = (data as FetchTablesResponse).data?.tables;
          if (tables == null || tables!.isEmpty) {
            return Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: EmptyDataView(text: "No tables available \nPlease try another time or date"),
            );
          }
          return ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: tables.length,
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              final table = tables?[index];
              return Obx(() =>
                  TableItemWidgetPrime(
                    table: table,
                    ratingAndReviewModel: table?.topRated,
                    isSelected: bookingViewModel.selectedTable.value?.id == table?.id,
                    onTap: () => bookingViewModel.selectTable(table!),
                    onViewRating: () {
                      Get.to(() => RatingReviewsPage(rating: table?.rating, categoryRating: table?.categoryRating,tableId: table?.id,));
                    },
                  ),
              );
            },
          );
        },
        error: (err) => Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.red.shade50,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.red.shade200),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.error_outline_rounded, color: Colors.red.shade400, size: 32),
                const SizedBox(height: 8),
                Text(
                  "Error: $err",
                  style: TextStyle(
                    color: Colors.red.shade700,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    });
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