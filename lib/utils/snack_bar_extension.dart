import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_color.dart';

extension GetSnackbarExtension on GetInterface {
  void showCustomSnackBar({
    String? title,
    required String message,
    Duration? duration,
    Color? backgroundColor,
  }) {
    showSnackbar(
      GetSnackBar(
        titleText: title?.toLowerCase() != 'failed' && (title ?? "").isNotEmpty
            ? Text(
          title ?? "",
          style: const TextStyle(
            color: CustomColors.darkBlack,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        )
            : null,
        messageText: Text(
          message,
          style: const TextStyle(
            color: CustomColors.darkBlack,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        duration: duration ?? const Duration(seconds: 2),
        backgroundColor: backgroundColor ?? CustomColors.primary,
      ),
    );
  }
}