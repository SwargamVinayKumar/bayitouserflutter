import 'package:bayitouser/components/empty_data_view.dart';
import 'package:bayitouser/pages/professional_booking_details_page.dart';
import 'package:bayitouser/shimmer/single_item_shimmer.dart';
import 'package:bayitouser/components/custom_tab_component.dart';
import 'package:bayitouser/shimmer/reservation_list_shimmer.dart';
import 'package:bayitouser/view_models/booking_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../api/api_result.dart';
import '../components/custom_action_button.dart';
import '../components/reservation_outlet_card.dart';
import '../models/responseModels/booking_response_model.dart';
import '../models/responseModels/page_model.dart';
import '../utils/custom_color.dart';
import 'booking_details_page.dart';
import 'package:get/get.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key, required this.showBackArrow});

  final bool showBackArrow;

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  final bookingViewModel = Get.put(BookingViewModel());
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);

  final List<String> tabs = [
    "Upcoming",
    "Completed",
    "Cancelled",
  ];

  @override
  void initState() {
    super.initState();
    _fetchBookings(isRefresh: true);
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      _fetchBookings();
    }
  }

  void _fetchBookings({bool isRefresh = false}) {
    bookingViewModel.fetchUserBookingsByTab(selectedIndex.value, isRefresh: isRefresh);
  }

  @override
  void dispose() {
    selectedIndex.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  widget.showBackArrow
                      ? CustomActionButton(
                          icon: Icons.arrow_back_ios_new_rounded,
                          onTap: () {
                            Get.back();
                          },
                        )
                      : const SizedBox(),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      "Reservations",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: CustomColors.secondary,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ValueListenableBuilder<int>(
                valueListenable: selectedIndex,
                builder: (context, value, child) {
                  return CustomTabs(
                    tabs: tabs,
                    selectedIndex: value,
                    onChanged: (index) {
                      selectedIndex.value = index;
                      _fetchBookings(isRefresh: true);
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ValueListenableBuilder<int>(
                  valueListenable: selectedIndex,
                  builder: (context, tabIndex, child) {
                    return Obx(() {
                      RxList<BookingModel> list;
                      Rx<PaginationModel<Rx<ApiResult<BookingListResponse>>>> observer;

                      if (tabIndex == 0) {
                        list = bookingViewModel.upcomingBookings;
                        observer = bookingViewModel.upcomingObserver;
                      } else if (tabIndex == 1) {
                        list = bookingViewModel.completedBookings;
                        observer = bookingViewModel.completedObserver;
                      } else {
                        list = bookingViewModel.cancelledBookings;
                        observer = bookingViewModel.cancelledObserver;
                      }

                      return observer.value.data.value.when(
                        init: () => const SizedBox.shrink(),
                        loading: (msg) => list.isEmpty
                            ? const ReservationListShimmer()
                            : _buildList(list, observer.value),
                        success: (data) => list.isEmpty
                            ? const r
                            : _buildList(list, observer.value),
                        error: (err) => list.isEmpty
                            ? Center(child: EmptyDataView(text: err))
                            : _buildList(list, observer.value),
                      );
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildList(List<BookingModel> bookings, PaginationModel pagination) {
    return RefreshIndicator(
      onRefresh: () async => _fetchBookings(isRefresh: true),
      child: ListView.builder(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: bookings.length + (pagination.isPaginationCompleted ? 0 : 1),
        itemBuilder: (context, index) {
          if (index == bookings.length) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SingleReservationShimmer(),
            );
          }

          final booking = bookings[index];
          return ReservationOutletCard(
            bookingType: booking.bookingType ?? "classic",
            image: booking.outletId?.businessLogo ?? "",
            OutletName: booking.outletId?.businessName ?? "Outlet Name",
            location: booking.outletId?.location?.address1 ?? "Location",
            date: booking.checkIn != null ? _formatDate(booking.checkIn!) : "",
            time: booking.checkIn != null ? _formatTime(booking.checkIn!) : "",
            table: "Table ${booking.tableId?.tableNumber ?? ''}",
            onTap: () {
              if((booking.bookingType ?? "classic") != "classic"){
                Get.to(() => ProfessionalBookingDetailsPage(bookingId: booking.id ?? ""));
              }
              else{
                Get.to(() => BookingDetailsPage(bookingId: booking.id ?? ""));
              }
            },
          );
        },
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
