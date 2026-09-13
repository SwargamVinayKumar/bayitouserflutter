import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

class ReservationListShimmer extends StatelessWidget {
  const ReservationListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
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
                millisecondsDelay: index * 100,
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
                      millisecondsDelay: index * 120,
                      highlightColor: Colors.grey.shade200,
                      baseColor: Colors.white,
                    ),
                    const SizedBox(height: 6),
                    FadeShimmer(
                      height: 12,
                      width: 150,
                      radius: 4,
                      millisecondsDelay: index * 140,
                      highlightColor: Colors.grey.shade200,
                      baseColor: Colors.white,
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        FadeShimmer(
                          height: 14,
                          width: 80,
                          radius: 4,
                          millisecondsDelay: index * 160,
                          highlightColor: Colors.grey.shade200,
                          baseColor: Colors.white,
                        ),
                        const SizedBox(width: 14),
                        FadeShimmer(
                          height: 12,
                          width: 60,
                          radius: 4,
                          millisecondsDelay: index * 180,
                          highlightColor: Colors.grey.shade200,
                          baseColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FadeShimmer(
                          height: 14,
                          width: 60,
                          radius: 4,
                          millisecondsDelay: index * 200,
                          highlightColor: Colors.grey.shade200,
                          baseColor: Colors.white,
                        ),
                        FadeShimmer(
                          height: 35,
                          width: 100,
                          radius: 14,
                          millisecondsDelay: index * 220,
                          highlightColor: Colors.grey.shade200,
                          baseColor: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
