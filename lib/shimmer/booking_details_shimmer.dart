import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

import '../utils/custom_color.dart';

class BookingDetailsShimmer extends StatelessWidget {
  const BookingDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// -------- OUTLET HEADER SHIMMER --------
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: CustomColors.secondary.withOpacity(0.05),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                FadeShimmer(
                  height: 80,
                  width: 80,
                  radius: 16,
                  millisecondsDelay: 100,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeShimmer(
                        height: 20,
                        width: 150,
                        radius: 4,
                        millisecondsDelay: 150,
                        highlightColor: Colors.grey.shade200,
                        baseColor: Colors.white,
                      ),
                      const SizedBox(height: 8),
                      FadeShimmer(
                        height: 14,
                        width: 200,
                        radius: 4,
                        millisecondsDelay: 200,
                        highlightColor: Colors.grey.shade200,
                        baseColor: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 24),

          /// -------- STATUS SHIMMER --------
          FadeShimmer(
            height: 16,
            width: 120,
            radius: 4,
            millisecondsDelay: 250,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.white,
          ),
          const SizedBox(height: 8),
          FadeShimmer(
            height: 35,
            width: 100,
            radius: 20,
            millisecondsDelay: 300,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.white,
          ),
          const SizedBox(height: 24),

          /// -------- RESERVATION DETAILS SHIMMER --------
          FadeShimmer(
            height: 16,
            width: 150,
            radius: 4,
            millisecondsDelay: 350,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.white,
          ),
          const SizedBox(height: 16),
          _buildInfoCardShimmer(4),
          const SizedBox(height: 24),

          /// -------- TABLE & SEAT SHIMMER --------
          FadeShimmer(
            height: 16,
            width: 120,
            radius: 4,
            millisecondsDelay: 400,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.white,
          ),
          const SizedBox(height: 16),
          FadeShimmer(
            height: 100,
            width: double.infinity,
            radius: 20,
            millisecondsDelay: 450,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.white,
          ),
          const SizedBox(height: 24),

          /// -------- PAYMENT INFO SHIMMER --------
          FadeShimmer(
            height: 16,
            width: 180,
            radius: 4,
            millisecondsDelay: 500,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.white,
          ),
          const SizedBox(height: 16),
          _buildInfoCardShimmer(3),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildInfoCardShimmer(int rows) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        children: List.generate(
          rows,
          (index) => Padding(
            padding: EdgeInsets.only(bottom: index == rows - 1 ? 0 : 16),
            child: Row(
              children: [
                FadeShimmer(
                  height: 20,
                  width: 20,
                  radius: 4,
                  millisecondsDelay: 100 * (index + 1),
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
                const SizedBox(width: 12),
                FadeShimmer(
                  height: 14,
                  width: 80,
                  radius: 4,
                  millisecondsDelay: 120 * (index + 1),
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
                const Spacer(),
                FadeShimmer(
                  height: 14,
                  width: 100,
                  radius: 4,
                  millisecondsDelay: 140 * (index + 1),
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
