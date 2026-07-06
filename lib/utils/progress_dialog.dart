import 'package:flutter/material.dart';
import 'custom_color.dart';

class ProgressDialog extends StatelessWidget {
  const ProgressDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: CustomColors.secondary),
    );
  }
}