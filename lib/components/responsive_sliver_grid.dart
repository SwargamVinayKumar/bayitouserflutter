import 'package:flutter/material.dart';

import '../pages/cafe_page.dart';
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
          itemCount: 4, // Number of menu items
          itemBuilder: (context, index) {
            return _buildMenuCard(index);
          },
        );
      },
    );
  }

  GridConfig _getGridConfig(double screenWidth) {
    if (screenWidth >= 1024) {
      return GridConfig(
        crossAxisCount: 4,
        childAspectRatio: 1.6,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      );
    } else if (screenWidth >= 600) {
      return GridConfig(
        crossAxisCount: 3,
        childAspectRatio: 1.5,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
      );
    } else if (screenWidth > 500) {
      return GridConfig(
        crossAxisCount: 2,
        childAspectRatio: 1.4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      );
    } else {
      return GridConfig(
        crossAxisCount: 2,
        childAspectRatio: 1.2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      );
    }
  }

  Widget _buildMenuCard(int index) {
    final menuItems = [
      {
        'title': 'Nearby',
        'subtitle': 'Discover places',
        'icon': Icons.location_on_rounded,
        'page': const CafePage(type: 'nearby'),
      },
      {
        'title': 'Book Table',
        'subtitle': 'Reserve instantly',
        'icon': Icons.table_restaurant,
        'page': const CafePage(type: 'all'),
      },
      {
        'title': 'Meet People',
        'subtitle': 'Connect nearby',
        'icon': Icons.handshake,
        'page': const MeetPeoplePage(),
      },
      {
        'title': 'Reservations',
        'subtitle': 'Booking history',
        'icon': Icons.event,
        'page': const ReservationPage(showBackArrow: true),
      },
    ];

    final item = menuItems[index];

    return HomeMenuCard(
      title: item['title'] as String,
      subtitle: item['subtitle'] as String,
      icon: item['icon'] as IconData,
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
