import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

class SingleOutletShimmer extends StatelessWidget {
  const SingleOutletShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          FadeShimmer(
            height: 80,
            width: 80,
            radius: 12,
            millisecondsDelay: 100,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.white,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeShimmer(
                  height: 16,
                  width: 150,
                  radius: 4,
                  millisecondsDelay: 120,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
                const SizedBox(height: 6),
                FadeShimmer(
                  height: 12,
                  width: 100,
                  radius: 4,
                  millisecondsDelay: 140,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SingleReservationShimmer extends StatelessWidget {
  const SingleReservationShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          FadeShimmer(
            height: 100,
            width: 90,
            radius: 18,
            millisecondsDelay: 100,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.white,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeShimmer(
                  height: 16,
                  width: 120,
                  radius: 4,
                  millisecondsDelay: 120,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
                const SizedBox(height: 6),
                FadeShimmer(
                  height: 12,
                  width: 150,
                  radius: 4,
                  millisecondsDelay: 140,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SinglePersonShimmer extends StatelessWidget {
  const SinglePersonShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          FadeShimmer.round(
            size: 60,
            millisecondsDelay: 100,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.white,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeShimmer(
                  height: 16,
                  width: 120,
                  radius: 4,
                  millisecondsDelay: 120,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
                const SizedBox(height: 6),
                FadeShimmer(
                  height: 12,
                  width: 180,
                  radius: 4,
                  millisecondsDelay: 140,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
