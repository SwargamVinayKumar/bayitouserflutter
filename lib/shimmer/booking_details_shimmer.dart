import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

import '../utils/custom_color.dart';


class BookingDetailsShimmer extends StatelessWidget {
  final int index;
  final bool? imageView;

  const BookingDetailsShimmer({
    super.key,
    required this.index,
    this.imageView,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cardWidth = constraints.maxWidth;

        return Padding(
          padding: const EdgeInsets.all(6),
          child: Container(
            decoration: BoxDecoration(
              color: CustomColors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// -------- TOP ROW --------
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (imageView ?? true)
                      FadeShimmer(
                        height: 80,
                        width: cardWidth * 0.28, // ✅ card-based width
                        radius: 12,
                        millisecondsDelay: index * 300,
                        highlightColor: Colors.grey.shade200,
                        baseColor: Colors.white,
                      ),

                    if (imageView ?? true)
                      const SizedBox(width: 10),

                    /// -------- TEXT SECTION --------
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeShimmer(
                            height: 18,
                            width: cardWidth * 0.5,
                            radius: 8,
                            millisecondsDelay: index * 300,
                            highlightColor: Colors.grey.shade200,
                            baseColor: Colors.white,
                          ),
                          const SizedBox(height: 6),
                          if (imageView ?? true) FadeShimmer(
                            height: 16,
                            width: cardWidth * 0.5,
                            radius: 8,
                            millisecondsDelay: index * 300,
                            highlightColor: Colors.grey.shade200,
                            baseColor: Colors.white,
                          ),
                          const SizedBox(height: 6),
                          if (imageView ?? true) FadeShimmer(
                            height: 16,
                            width: cardWidth * 0.3,
                            radius: 8,
                            millisecondsDelay: index * 300,
                            highlightColor: Colors.grey.shade200,
                            baseColor: Colors.white,
                          ),
                          const SizedBox(height: 6),
                          FadeShimmer(
                            height: 40,
                            width: cardWidth * 0.6,
                            radius: 20,
                            millisecondsDelay: index * 300,
                            highlightColor: Colors.grey.shade200,
                            baseColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                /// -------- BOTTOM BUTTON SHIMMERS --------
                Row(
                  children: List.generate(
                    3,
                        (i) => Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: i != 2 ? 8 : 0),
                        child: FadeShimmer(
                          height: 28,
                          radius: 20,
                          millisecondsDelay: index * 300,
                          highlightColor: Colors.grey.shade200,
                          baseColor: Colors.white, width: (cardWidth - 16) / 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
