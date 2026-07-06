import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PeopleCountComponent extends StatelessWidget {

  final int peopleCount;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const PeopleCountComponent({
    super.key,
    required this.peopleCount,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: CustomColors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white24,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onRemove,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: CustomColors.white.withOpacity(0.08),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                "$peopleCount",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: CustomColors.white,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: onAdd,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: CustomColors.white.withOpacity(0.08),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}