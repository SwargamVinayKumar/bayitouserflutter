import 'package:bayitouser/components/custom_network_image.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/responseModels/table_response_model.dart';

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
                 child: CustomNetworkImage(
                   imageUrl: table.images!.first,
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
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: isSelected ? Colors.white : CustomColors.secondary,
              ),
            ),
            Text(
              "${table.seatCapacity} Seats",
              style: GoogleFonts.sora(
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
  final SeatModel seat;
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
            Icon(
              Icons.chair_rounded,
              color: getContentColor(),
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              seat.seatNumber ?? "",
              style: GoogleFonts.sora(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: getContentColor(),
              ),
            ),
            if (seat.charges?.perHour != null)
              Text(
                "₹${seat.charges!.perHour}/hr",
                style: GoogleFonts.sora(
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
