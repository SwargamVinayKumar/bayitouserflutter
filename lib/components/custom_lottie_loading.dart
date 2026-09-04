import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../utils/custom_color.dart';

class CustomLottieLoading extends StatelessWidget {
  const CustomLottieLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color:CustomColors.secondary.withOpacity(0.5),width: double.infinity,height: double.infinity,child: Center(child:  Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: CustomColors.white),
      width: 200,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/loading.json',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 8),
            Text(
              "Loading...",
              style: GoogleFonts.sora(
                color: CustomColors.secondary,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    ))) ;
  }
}
