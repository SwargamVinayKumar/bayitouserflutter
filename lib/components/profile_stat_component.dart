import 'package:flutter/material.dart';
import '../utils/custom_color.dart';

class ProfileStatComponent extends StatelessWidget {

  final String count;
  final String title;

  const ProfileStatComponent({
    super.key,
    required this.count,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            color: CustomColors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            color: CustomColors.white.withOpacity(0.85),
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
