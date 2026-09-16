import 'package:flutter/material.dart';

import '../pages/outlet_page.dart';
import '../pages/meet_people_page.dart';
import '../pages/reservation_page.dart';
import 'home_menu_card.dart';
import 'package:get/get.dart';

class ResponsiveSliverGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = MediaQuery.of(context).size.width;
        final isTablet = screenWidth >= 600;
        final isDesktop = screenWidth >= 1024;

        // Responsive grid configuration
        final gridConfig = _getGridConfig(screenWidth);

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: gridConfig.crossAxisCount,
            childAspectRatio: gridConfig.childAspectRatio,
            crossAxisSpacing: gridConfig.crossAxisSpacing,
            mainAxisSpacing: gridConfig.mainAxisSpacing,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4, // Restored to 6 items
          itemBuilder: (context, index) {
            return _buildMenuCard(index);
          },
        );
      },
    );
  }

  GridConfig _getGridConfig(double screenWidth) {
    const double imageAspectRatio = 16 / 9; // Perfect 16:9 for 1280x720 images

    if (screenWidth >= 1024) {
      return GridConfig(
        crossAxisCount: 3, // 3 per row looks better for 6 items on wide screens
        childAspectRatio: imageAspectRatio,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      );
    } else if (screenWidth >= 600) {
      return GridConfig(
        crossAxisCount: 2,
        childAspectRatio: imageAspectRatio,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
      );
    } else {
      // Mobile
      return GridConfig(
        crossAxisCount: 2,
        childAspectRatio: imageAspectRatio,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      );
    }
  }

  Widget _buildMenuCard(int index) {
    final menuItems = [
      {
        'imagePath': 'assets/images/Nearby.png',
        'page': const OutletPage(type: 'nearby'),
      },
      {
        'imagePath': 'assets/images/BookTable.png',
        'page': const OutletPage(type: 'all'),
      },
      {
        'imagePath': 'assets/images/MeetPeople.png',
        'page': const MeetPeoplePage(),
      },
      {
        'imagePath': 'assets/images/Reservations.png',
        'page': const ReservationPage(showBackArrow: true),
      }
    ];

    final item = menuItems[index];

    return HomeMenuCard(
      imagePath: item['imagePath'] as String,
      onTap: () {
        Get.to(() => item['page'] as Widget);
      },
    );
  }
}

class GridConfig {
  final int crossAxisCount;
  final double childAspectRatio;
  final double crossAxisSpacing;
  final double mainAxisSpacing;

  GridConfig({
    required this.crossAxisCount,
    required this.childAspectRatio,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
  });
}


