import 'package:flutter/material.dart';

import '../utils/custom_color.dart';

class CustomActionButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback onTap;

  const CustomActionButton({super.key,
    required this.icon,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 42,
        width: 42,
        decoration: BoxDecoration(
          color: CustomColors.white.withOpacity(0.20),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Icon(icon,
          color: CustomColors.white,
        ),
      ),
    );
  }
}
