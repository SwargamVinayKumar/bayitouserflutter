import 'package:bayitouser/components/custom_action_button.dart';
import 'package:bayitouser/components/custom_network_image.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/view_models/booking_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingDetailsPage extends StatefulWidget {
  final String bookingId;
  const BookingDetailsPage({super.key, required this.bookingId});

  @override
  State<BookingDetailsPage> createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  final bookingViewModel = Get.find<BookingViewModel>();

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
          "Booking Details",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: CustomColors.secondary,
          ),
        ),
      ),
      body: SafeArea(
        child: Obx(() {
          return bookingViewModel.fetchBookingDetailsObserver.value.when(
            init: () => const SizedBox.shrink(),
            loading: (msg) => const Center(child: CircularProgressIndicator(color: CustomColors.secondary)),
            success: (data) {
              final booking = data.data;
              if (booking == null) return const Center(child: Text("No details found"));
              return SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildOutletHeader(booking),
                    const SizedBox(height: 24),
                    _buildSectionTitle("Booking Status"),
                    const SizedBox(height: 8),
                    _buildStatusChip(booking.status ?? ""),
                    const SizedBox(height: 24),
                    _buildSectionTitle("Reservation Details"),
                    const SizedBox(height: 16),
                    _buildInfoCard([
                      _infoRow(Icons.calendar_today, "Date", _formatDate(booking.checkIn ?? "")),
                      _infoRow(Icons.access_time, "Time", "${_formatTime(booking.checkIn ?? "")} - ${_formatTime(booking.checkOut ?? "")}"),
                      _infoRow(Icons.table_restaurant, "Table", "Table ${booking.tableId?.tableNumber ?? ''} (${booking.tableId?.seatType ?? ''})"),
                      _infoRow(Icons.vpn_key, "Booking OTP", booking.bookingOTP?.toString() ?? "N/A"),
                    ]),
                    const SizedBox(height: 24),
                    _buildSectionTitle("Payment Information"),
                    const SizedBox(height: 16),
                    _buildInfoCard([
                      _infoRow(Icons.payment, "Method", booking.paymentType?.toUpperCase() ?? ""),
                      _infoRow(Icons.receipt, "Transaction ID", booking.orderId ?? ""),
                      _infoRow(Icons.money, "Amount Paid", "₹${booking.amount}"),
                    ]),
                    const SizedBox(height: 30),
                  ],
                ),
              );
            },
            error: (err) => Center(child: Text(err)),
          );
        }),
      ),
    );
  }

  Widget _buildOutletHeader(dynamic booking) {
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
                  style: GoogleFonts.sora(fontSize: 18, fontWeight: FontWeight.w700, color: CustomColors.secondary),
                ),
                const SizedBox(height: 4),
                Text(
                  booking.outletId?.location?.address1 ?? "",
                  style: GoogleFonts.sora(fontSize: 14, color: CustomColors.secondary.withOpacity(0.7)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(title, style: GoogleFonts.plusJakartaSans(fontSize: 16, fontWeight: FontWeight.w700, color: CustomColors.secondary));
  }

  Widget _buildStatusChip(String status) {
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
        style: GoogleFonts.sora(fontSize: 12, fontWeight: FontWeight.bold, color: color),
      ),
    );
  }

  Widget _buildInfoCard(List<Widget> children) {
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

  Widget _infoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20, color: CustomColors.secondary.withOpacity(0.7)),
          const SizedBox(width: 12),
          Text(label, style: GoogleFonts.sora(fontSize: 14, color: CustomColors.secondary.withOpacity(0.7))),
          const Spacer(),
          Text(value, style: GoogleFonts.sora(fontSize: 14, fontWeight: FontWeight.w600, color: CustomColors.secondary)),
        ],
      ),
    );
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
