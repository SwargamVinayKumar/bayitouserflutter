import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

class HomePageShimmer extends StatelessWidget {
  const HomePageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.34,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeShimmer(
                  height: 100,
                  width: double.infinity,
                  radius: 16,
                  millisecondsDelay: index * 100,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
                const SizedBox(height: 8),
                FadeShimmer(
                  height: 14,
                  width: 80,
                  radius: 4,
                  millisecondsDelay: index * 120,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
                const SizedBox(height: 4),
                FadeShimmer(
                  height: 12,
                  width: 50,
                  radius: 4,
                  millisecondsDelay: index * 140,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
