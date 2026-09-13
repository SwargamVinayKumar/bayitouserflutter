import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

class OutletListShimmer extends StatelessWidget {
  const OutletListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
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
                      width: 150,
                      radius: 4,
                      millisecondsDelay: index * 120,
                      highlightColor: Colors.grey.shade200,
                      baseColor: Colors.white,
                    ),
                    const SizedBox(height: 6),
                    FadeShimmer(
                      height: 12,
                      width: 100,
                      radius: 4,
                      millisecondsDelay: index * 140,
                      highlightColor: Colors.grey.shade200,
                      baseColor: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        FadeShimmer(
                          height: 12,
                          width: 40,
                          radius: 4,
                          millisecondsDelay: index * 160,
                          highlightColor: Colors.grey.shade200,
                          baseColor: Colors.white,
                        ),
                        const SizedBox(width: 10),
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
