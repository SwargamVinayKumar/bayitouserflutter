import 'package:bayitouser/components/profile_stat_component.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';

class ProfileHeaderComponent extends StatelessWidget {
  const ProfileHeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 60,
        bottom: 30,
        left: 20,
        right: 20,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
        gradient: CustomColors.mainGradientColor,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                color: CustomColors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.logout,
                color: CustomColors.white,
                size: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: CustomColors.white,
                    width: 3,
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/cafe.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomColors.white,
                    border: Border.all(
                      color: CustomColors.white,
                      width: 2,
                    ),
                  ),
                  child: const Icon(
                    Icons.edit,
                    size: 14,
                    color: CustomColors.darkBlack,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Text(
            "Venkatesh",
            style: TextStyle(
              color: CustomColors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "@venky_25",
            style: TextStyle(
              color: CustomColors.white.withOpacity(0.85),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 24),
          const Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
              ProfileStatComponent(
                count: "25",
                title: "Reservations",
              ),
              ProfileStatComponent(
                count: "48",
                title: "Connections",
              ),
              ProfileStatComponent(
                count: "16",
                title: "Favorites",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
