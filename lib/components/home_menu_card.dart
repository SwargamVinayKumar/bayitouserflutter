import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/custom_color.dart';

class HomeMenuCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color ctnColor;
  final Color titleColor;
  final VoidCallback? onTap;
  final double? customWidth;
  final double? customHeight;

  const HomeMenuCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.ctnColor = CustomColors.primary,
    this.titleColor = CustomColors.secondary,
    this.onTap,
    this.customWidth,
    this.customHeight,
  });

  // Helper method to get responsive size
  double getResponsiveSize(BuildContext context, {double? baseSize}) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Base size for reference (iPhone 12/13/14 - 390x844)
    const baseWidth = 390.0;
    const baseHeight = 844.0;

    // Calculate scale factor based on screen size
    final widthScale = screenWidth / baseWidth;
    final heightScale = screenHeight / baseHeight;

    // Use the smaller scale to ensure content fits
    final scale = (widthScale + heightScale) / 2;

    return (baseSize ?? 16) * scale.clamp(0.8, 1.5);
  }

  // Check if device is tablet
  bool isTablet(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide >= 600;
  }

  // Check if device is desktop
  bool isDesktop(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide >= 1024;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = this.isTablet(context);
    final isDesktop = this.isDesktop(context);

    // Responsive padding and sizing
    final paddingSize = getResponsiveSize(context, baseSize: 22);
    final iconPaddingSize = getResponsiveSize(context, baseSize: 16);
    final iconSize = getResponsiveSize(context, baseSize: 18);
    final titleFontSize = getResponsiveSize(context, baseSize: 16);
    final subtitleFontSize = getResponsiveSize(context, baseSize: 12);
    final borderRadius = getResponsiveSize(context, baseSize: 12);
    final iconBorderRadius = getResponsiveSize(context, baseSize: 18);

    // Responsive width and height
    double cardWidth;
    double cardHeight;

    if (customWidth != null && customHeight != null) {
      cardWidth = customWidth!;
      cardHeight = customHeight!;
    } else if (isDesktop) {
      cardWidth = screenWidth * 0.2; // 20% of screen width on desktop
      cardHeight = screenWidth * 0.2;
    } else if (isTablet) {
      cardWidth = screenWidth * 0.28; // 28% on tablet
      cardHeight = screenWidth * 0.28;
    } else {
      // Mobile - responsive grid
      final crossAxisCount = screenWidth > 500 ? 3 : 2;
      cardWidth = (screenWidth - (crossAxisCount + 1) * 16) / crossAxisCount;
      cardHeight = cardWidth * 1.2; // Slightly taller than wide
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          color: ctnColor,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: titleColor.withOpacity(0.4),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(paddingSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Icon Container - Responsive
              Container(
                padding: EdgeInsets.all(iconPaddingSize),
                decoration: BoxDecoration(
                  color: CustomColors.white.withOpacity(0.18),
                  borderRadius: BorderRadius.circular(iconBorderRadius),
                ),
                child: Icon(
                  icon,
                  color: titleColor,
                  size: iconSize,
                ),
              ),

              // Title & Subtitle - Responsive
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.w600,
                      color: titleColor,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: isTablet ? 4 : 2),
                  Text(
                    subtitle,
                    style: GoogleFonts.sora(
                      color: titleColor.withOpacity(0.9),
                      fontSize: subtitleFontSize,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}