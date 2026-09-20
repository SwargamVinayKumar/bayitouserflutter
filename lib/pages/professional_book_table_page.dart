import 'package:bayitouser/components/custom_action_button.dart';
import 'package:bayitouser/components/custom_network_image.dart';
import 'package:bayitouser/pages/rating_reviews_page.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:bayitouser/view_models/booking_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../api/api_result.dart';
import '../components/custom_gradient_button.dart';
import '../components/custom_lottie_loading.dart';
import '../components/table_seat_item.dart';
import '../models/responseModels/booking_response_model.dart';
import '../models/responseModels/outlet_response_model.dart';
import '../utils/progress_dialog.dart';

class ProfessionalBookTablePage extends StatefulWidget {
  final String bookingId;
  const ProfessionalBookTablePage({super.key, required this.bookingId});

  @override
  State<ProfessionalBookTablePage> createState() => _ProfessionalBookTablePageState();
}

class _ProfessionalBookTablePageState extends State<ProfessionalBookTablePage> {
  final bookingViewModel = Get.put(BookingViewModel());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bookingViewModel.fetchBookingDetails(widget.bookingId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        backgroundColor: CustomColors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomActionButton(
            icon: Icons.arrow_back_ios_new_rounded,
            onTap: () => Get.back(),
          ),
        ),
        title: Text(
          "Professional Book Table",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: CustomColors.secondary,
          ),
        ),
      ),
      body: StatefulWrapper(
        onInit: (){
          bookingViewModel.checkAvailabilityObserver.value = ApiResult.init();
        },
        child: SafeArea(
          child: Obx(() {
            return bookingViewModel.fetchBookingDetailsObserver.value.when(
              init: () => const SizedBox.shrink(),
              loading: (msg) => const Center(child: CircularProgressIndicator(color: CustomColors.secondary)),
              success: (data) {
                final booking = (data as BookingDetailsResponse).data;
                bookingViewModel.selectedTable.value = booking?.tableId;
                if (booking == null) return const Center(child: Text("No details found"));
                return Stack(
                  children: [
                    SingleChildScrollView(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildSectionTitle("User Details"),
                          const SizedBox(height: 8),
                          buildUserDetails(booking),
                          const SizedBox(height: 24),
                          buildSectionTitle("Outlet Details"),
                          const SizedBox(height: 8),
                          buildOutletHeader(booking),
                          const SizedBox(height: 24),
                          buildSectionTitle("Booking Status"),
                          const SizedBox(height: 8),
                          buildStatusChip(booking.status ?? ""),
                          const SizedBox(height: 24),
                          buildSectionTitle("Reservation Details"),
                          const SizedBox(height: 16),
                          buildInfoCard([
                            infoRow(Icons.calendar_today, "Date", _formatDate(booking.checkIn ?? "")),
                            infoRow(Icons.access_time, "Time", "${_formatTime(booking.checkIn ?? "")} - ${_formatTime(booking.checkOut ?? "")}"),
                            infoRow(Icons.table_restaurant, "Table", "${booking.tableId?.tableNumber ?? ''} (${booking.tableId?.seatType ?? ''})"),
                            infoRow(Icons.vpn_key, "Booking OTP", booking.bookingOTP?.toString() ?? "N/A"),
                          ]),
                          const SizedBox(height: 24),
                          _buildSeatSection(booking.outletId,booking.seatId ?? "",booking,bookingViewModel),
                          const SizedBox(height: 32),
                          _buildBookingActions(booking.outletId,booking,bookingViewModel),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                    Obx(() => bookingViewModel.checkAvailabilityObserver.value.maybeWhen(loading: (cds)  =>
                        const CustomLottieLoading(),
                        orElse: () => const SizedBox()))
                  ],
                );
              },
              error: (err) => Center(child: Text(err)),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildSeatSection(OutletModel? outlet,String? seatId,BookingModel? booking,BookingViewModel bookingViewModel) {
    return Obx(() {
      final table = bookingViewModel.selectedTable.value;
      if (table == null || table.seats == null || table.seats!.isEmpty) {
        return const SizedBox.shrink();
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSectionHeader("Reserved Table", Icons.event_seat_rounded),
          const SizedBox(height: 16),
          TableItemWidgetPrime(
            table: table,
            ratingAndReviewModel: table.topRated,
            isSelected: true,
            onTap: (){},
            onViewRating: () {
              Get.to(() => RatingReviewsPage(rating: table.rating, categoryRating: table.categoryRating,tableId: table.id ?? "",));
            },
          ),
          const SizedBox(height: 16),
          buildSectionHeader("Select Seat", Icons.event_seat_rounded),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: table.seats!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.85,
            ),
            itemBuilder: (context, index) {
              final seat = table.seats![index];
              print(seat.id);
              print(seatId);
              return Obx(() => SeatItemWidget(
                seat: seat,
                isSelected: bookingViewModel.selectedSeat.value?.id == seat.id,
                isBooked: (seat.available == false) || (seat.id == (seatId ?? "")),
                onTap: () {
                  bookingViewModel.selectSeat(seat);
                  bookingViewModel.checkAvailability(outlet?.id ?? "",booking);
                } ,
              ),
              );
            },
          ),
        ],
      );
    });
  }


  Widget _buildBookingActions(OutletModel? outletModel,BookingModel? booking,BookingViewModel bookingViewModel) {
    return Obx(() {
      final availabilityState = bookingViewModel.checkAvailabilityObserver.value;

      return Column(
        children: [
          availabilityState.maybeWhen(
            loading: (msg) => Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  ProgressDialog(),
                  const SizedBox(height: 8),
                  Text(
                    "Checking availability...",
                    style: TextStyle(
                      color: CustomColors.secondary,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            success: (data) {
              if (data.data?.available == true) {
                return Column(
                  children: [
                    buildPriceSummary(data.data!.bookingDetails!),
                    const SizedBox(height: 24),

                    Obx(() => CustomGradientButton(
                        title: "Confirm Booking",
                        onTap: () => bookingViewModel.confirmBooking(outletModel?.id ?? "",booking?.id),
                        height: 56,
                        fontSize: 18,
                        loading: bookingViewModel.confirmBookingObserver.value.maybeWhen(loading: (c) => true,orElse: ()=> false)
                    ),
                    ),
                  ],
                );
              } else {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade50,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.orange.shade200),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.info_outline_rounded, color: Colors.orange.shade700),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              data.data?.message ?? "Selected combination is not available",
                              style: TextStyle(
                                color: Colors.orange.shade700,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    CustomGradientButton(
                      title: "Check Availability",
                      onTap: () => bookingViewModel.checkAvailability(outletModel!.id!,booking),
                      height: 56,
                      fontSize: 18,
                    ),
                  ],
                );
              }
            },
            orElse: () {
              final hasAllSelections = bookingViewModel.selectedTable.value != null &&
                  bookingViewModel.selectedSeat.value != null;

              if (!hasAllSelections) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.info_outline_rounded, color: Colors.grey.shade600),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          "Select table and seat to check availability",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }

              return CustomGradientButton(
                title: "Check Availability",
                onTap: () => bookingViewModel.checkAvailability(outletModel!.id!,booking),
                height: 56,
                fontSize: 18,
              );
            },
          ),
        ],
      );
    });
  }




  String _formatDate(String isoDate) {
    try {
      DateTime dt = DateTime.parse(isoDate);
      return "${dt.day} ${_getMonth(dt.month)} ${dt.year}";
    } catch (e) {
      return "";
    }
  }

  String _formatTime(String isoDate) {
    try {
      DateTime dt = DateTime.parse(isoDate);
      String period = dt.hour >= 12 ? "PM" : "AM";
      int hour = dt.hour > 12 ? dt.hour - 12 : (dt.hour == 0 ? 12 : dt.hour);
      String minute = dt.minute.toString().padLeft(2, '0');
      return "$hour:$minute $period";
    } catch (e) {
      return "";
    }
  }

  String _getMonth(int month) {
    const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    return months[month - 1];
  }
}
