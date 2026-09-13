import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

class OutletDetailShimmer extends StatelessWidget {
  const OutletDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeShimmer(
            height: 300,
            width: double.infinity,
            radius: 0,
            millisecondsDelay: 100,
            highlightColor: Colors.grey.shade200,
            baseColor: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeShimmer(
                  height: 28,
                  width: 200,
                  radius: 6,
                  millisecondsDelay: 150,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
                const SizedBox(height: 10),
                FadeShimmer(
                  height: 16,
                  width: 250,
                  radius: 4,
                  millisecondsDelay: 200,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    FadeShimmer(
                      height: 16,
                      width: 50,
                      radius: 4,
                      millisecondsDelay: 250,
                      highlightColor: Colors.grey.shade200,
                      baseColor: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    FadeShimmer(
                      height: 16,
                      width: 100,
                      radius: 4,
                      millisecondsDelay: 300,
                      highlightColor: Colors.grey.shade200,
                      baseColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) => FadeShimmer(
                    height: 60,
                    width: 70,
                    radius: 12,
                    millisecondsDelay: index * 100,
                    highlightColor: Colors.grey.shade200,
                    baseColor: Colors.white,
                  )),
                ),
                const SizedBox(height: 30),
                FadeShimmer(
                  height: 20,
                  width: 80,
                  radius: 4,
                  millisecondsDelay: 400,
                  highlightColor: Colors.grey.shade200,
                  baseColor: Colors.white,
                ),
                const SizedBox(height: 10),
                FadeShimmer(
                  height: 60,
                  width: double.infinity,
                  radius: 8,
                  millisecondsDelay: 450,
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
