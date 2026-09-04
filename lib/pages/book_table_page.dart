import 'package:bayitouser/components/custom_action_button.dart';
import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/components/custom_lottie_loading.dart';
import 'package:bayitouser/components/empty_data_view.dart';
import 'package:bayitouser/components/table_seat_item.dart';
import 'package:bayitouser/models/responseModels/outlet_response_model.dart';
import 'package:bayitouser/utils/progress_dialog.dart';
import 'package:bayitouser/view_models/booking_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../components/custom_network_image.dart';
import '../components/section_title_item.dart';
import '../models/responseModels/booking_response_model.dart';
import '../models/responseModels/table_response_model.dart';
import '../utils/custom_color.dart';
import 'package:get/get.dart';

class BookTablePage extends StatefulWidget {
  final OutletModel? outletModel;

  const BookTablePage({super.key, this.outletModel});

  @override
  State<BookTablePage> createState() => _BookTablePageState();
}

class _BookTablePageState extends State<BookTablePage> with SingleTickerProviderStateMixin {
  final bookingViewModel = Get.put(BookingViewModel());
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    if (widget.outletModel?.id != null) {
      bookingViewModel.getTables(widget.outletModel!.id!);
    }

    // Add listeners for auto-check availability
    _setupListeners();

    Future.delayed(const Duration(milliseconds: 300), () {
      _animationController.forward();
    });
  }

  void _setupListeners() {
    // Listen to selection changes and auto-check availability
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bookingViewModel.selectedDate.listen((_) {
        _autoCheckAvailability();
      });
      bookingViewModel.selectedTimeIndex.listen((_) {
        _autoCheckAvailability();
      });
      bookingViewModel.durationHours.listen((_) {
        _autoCheckAvailability();
      });
      bookingViewModel.selectedTable.listen((_) {
        _autoCheckAvailability();
      });
      bookingViewModel.selectedSeat.listen((_) {
        _autoCheckAvailability();
      });
    });
  }

  void _autoCheckAvailability() {
    if (widget.outletModel?.id != null &&
        bookingViewModel.selectedTable.value != null &&
        bookingViewModel.selectedSeat.value != null) {
      // Debounce the call
      Future.delayed(const Duration(milliseconds: 300), () {
        if (mounted) {
          bookingViewModel.checkAvailability(widget.outletModel!.id!);
        }
      });
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: bookingViewModel.selectedDate.value,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 30)),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: CustomColors.secondary,
              onPrimary: Colors.white,
              surface: Colors.white,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
    );
    if (pickedDate != null) {
      bookingViewModel.selectedDate.value = pickedDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            FadeTransition(
              opacity: _fadeAnimation,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const SizedBox(height: 12),
                      _buildOutletInfo(),
                      const SizedBox(height: 28),
                      _buildSectionHeader("Select Date", Icons.calendar_today_rounded),
                      const SizedBox(height: 12),
                      _buildDatePicker(),
                      const SizedBox(height: 28),
                      _buildSectionHeader("Select Time Slot", Icons.access_time_rounded),
                      const SizedBox(height: 14),
                      _buildTimeSlotPicker(),
                      const SizedBox(height: 28),
                      _buildSectionHeader("Duration", Icons.timer_rounded),
                      const SizedBox(height: 12),
                      _buildDurationPicker(),
                      const SizedBox(height: 28),
                      _buildSectionHeader("Select Table", Icons.table_restaurant_rounded),
                      const SizedBox(height: 16),
                      _buildTableSelection(),
                      const SizedBox(height: 28),
                      _buildSeatSection(),
                      const SizedBox(height: 32),
                      _buildBookingActions(),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
            Obx(() => bookingViewModel.checkAvailabilityObserver.value.maybeWhen(loading: (cds)  =>
                CustomLottieLoading(),
                orElse: () => const SizedBox()))
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomActionButton(
          icon: Icons.arrow_back_ios_new_rounded,
          onTap: () => Get.back()
        ),
      ),
      title: Text(
        "Book Table",
        style: GoogleFonts.plusJakartaSans(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: CustomColors.secondary,
          letterSpacing: -0.5,
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 16),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: CustomColors.secondary.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.restaurant_menu_rounded,
            color: CustomColors.secondary,
            size: 20,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title, IconData icon) {
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
          style: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: CustomColors.secondary,
          ),
        ),
      ],
    );
  }

  Widget _buildOutletInfo() {
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
                imageUrl: widget.outletModel?.businessLogo ?? "",
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
                  widget.outletModel?.name ?? "Outlet Name",
                  style: GoogleFonts.plusJakartaSans(
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
                        widget.outletModel?.location?.address1 ?? "Location not available",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.sora(
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
                        style: GoogleFonts.sora(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "(124 reviews)",
                        style: GoogleFonts.sora(
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

  Widget _buildDatePicker() {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              CustomColors.secondary.withOpacity(0.05),
              CustomColors.secondary.withOpacity(0.02),
            ],
          ),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: CustomColors.secondary.withOpacity(0.15),
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Icons.calendar_month_rounded,
                    color: CustomColors.secondary,
                    size: 22,
                  ),
                ),
                const SizedBox(width: 14),
                Obx(() => Text(
                  DateFormat("EEE, d MMM yyyy").format(bookingViewModel.selectedDate.value),
                  style: GoogleFonts.sora(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.secondary,
                  ),
                )),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: CustomColors.secondary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.arrow_drop_down_rounded,
                color: CustomColors.secondary,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeSlotPicker() {
    return Container(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Obx(() {
            bool isSelected = bookingViewModel.selectedTimeIndex.value == index;
            return GestureDetector(
              onTap: () {
                bookingViewModel.selectedTimeIndex.value = index;
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                padding: const EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                  gradient: isSelected
                      ? LinearGradient(
                    colors: [
                      CustomColors.secondary,
                      CustomColors.secondary.withOpacity(0.8),
                    ],
                  )
                      : null,
                  color: isSelected ? null : Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: isSelected
                        ? CustomColors.secondary
                        : Colors.grey.shade200,
                    width: isSelected ? 1.5 : 1,
                  ),
                  boxShadow: isSelected
                      ? [
                    BoxShadow(
                      color: CustomColors.secondary.withOpacity(0.3),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                      : [],
                ),
                child: Center(
                  child: Text(
                    bookingViewModel.timeSlots[index],
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: isSelected ? Colors.white : CustomColors.secondary,
                    ),
                  ),
                ),
              ),
            );
          });
        },
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemCount: bookingViewModel.timeSlots.length,
      ),
    );
  }

  Widget _buildDurationPicker() {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [1, 2, 3, 4].map((hours) {
          return Expanded(
            child: Obx(() {
              bool isSelected = bookingViewModel.durationHours.value == hours;
              return GestureDetector(
                onTap: () => bookingViewModel.durationHours.value = hours,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    gradient: isSelected
                        ? LinearGradient(
                      colors: [
                        CustomColors.secondary,
                        CustomColors.secondary.withOpacity(0.8),
                      ],
                    )
                        : null,
                    color: isSelected ? null : Colors.transparent,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: isSelected
                        ? [
                      BoxShadow(
                        color: CustomColors.secondary.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ]
                        : [],
                  ),
                  child: Text(
                    "$hours hr",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: isSelected ? Colors.white : CustomColors.secondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildTableSelection() {
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
                style: GoogleFonts.sora(
                  color: CustomColors.secondary,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        success: (data) {
          if (data.data?.tables == null || data.data!.tables!.isEmpty) {
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
          return SizedBox(
            height: 160,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: data.data!.tables!.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final table = data.data!.tables![index];
                return Obx(() =>
                   TableItemWidget(
                    table: table,
                    isSelected: bookingViewModel.selectedTable.value?.id == table.id,
                    onTap: () => bookingViewModel.selectTable(table),
                  ),
                );
              },
            ),
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
                  style: GoogleFonts.sora(
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

  Widget _buildSeatSection() {
    return Obx(() {
      final table = bookingViewModel.selectedTable.value;
      if (table == null || table.seats == null || table.seats!.isEmpty) {
        return const SizedBox.shrink();
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader("Select Seat", Icons.event_seat_rounded),
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
              return Obx(() => SeatItemWidget(
                  seat: seat,
                  isSelected: bookingViewModel.selectedSeat.value?.id == seat.id,
                  isBooked: seat.available == false,
                  onTap: () => bookingViewModel.selectSeat(seat),
                ),
              );
            },
          ),
        ],
      );
    });
  }

  Widget _buildBookingActions() {
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
                    style: GoogleFonts.sora(
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
                    _buildPriceSummary(data.data!.bookingDetails!),
                    const SizedBox(height: 24),
                    CustomGradientButton(
                      title: "Confirm Booking",
                      onTap: () => bookingViewModel.confirmBooking(widget.outletModel!.id!),
                      height: 56,
                      fontSize: 18,
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
                              style: GoogleFonts.sora(
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
                      onTap: () => bookingViewModel.checkAvailability(widget.outletModel!.id!),
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
                          style: GoogleFonts.sora(
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
                onTap: () => bookingViewModel.checkAvailability(widget.outletModel!.id!),
                height: 56,
                fontSize: 18,
              );
            },
          ),
        ],
      );
    });
  }

  Widget _buildPriceSummary(AvailabilityBookingDetails details) {
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
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: CustomColors.secondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildPriceRow(
            "Base Charge",
            "₹${details.perHourCharge}/hr",
            Icons.currency_rupee_rounded,
          ),
          const SizedBox(height: 10),
          _buildPriceRow(
            "Duration",
            "${details.duration} Hours",
            Icons.timer_rounded,
          ),
          const Divider(height: 24, color: CustomColors.secondary),
          _buildPriceRow(
            "Total Amount",
            "₹${details.totalAmount}",
            Icons.payments_rounded,
            isTotal: true,
          ),
        ],
      ),
    );
  }

  Widget _buildPriceRow(String label, String value, IconData icon, {bool isTotal = false}) {
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
              style: GoogleFonts.sora(
                fontSize: isTotal ? 16 : 14,
                fontWeight: isTotal ? FontWeight.w700 : FontWeight.w500,
                color: isTotal ? CustomColors.secondary : Colors.grey.shade700,
              ),
            ),
          ],
        ),
        Text(
          value,
          style: GoogleFonts.sora(
            fontSize: isTotal ? 20 : 15,
            fontWeight: isTotal ? FontWeight.w800 : FontWeight.w600,
            color: isTotal ? CustomColors.secondary : Colors.grey.shade800,
          ),
        ),
      ],
    );
  }
}