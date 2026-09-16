import 'package:bayitouser/components/custom_network_image.dart';
import 'package:bayitouser/components/profile_stat_component.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/responseModels/auth_response_model.dart';

class ProfileHeaderComponent extends StatelessWidget {
  final ProfileData? profileData;
  final VoidCallback onLogout;
  final bool? loading;
  const ProfileHeaderComponent({super.key, required this.onLogout,this.loading = false, this.profileData});

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
        color: CustomColors.secondary,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
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
              child:  InkWell(
                onTap:onLogout,
                child: loading == true ? const CircularProgressIndicator() :const Icon(
                  Icons.logout,
                  color: CustomColors.white,
                  size: 18,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              CustomNetworkImage(imageUrl: profileData?.profilePic ?? "",width: 80,height: 80,borderRadius: 200,fit: BoxFit.cover,),
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
           Text(
             profileData?.name ??  "Unknown",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: CustomColors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            profileData?.email ?? "",
            style: TextStyle(
              fontSize: 16,
              color: CustomColors.white.withOpacity(0.85),
            ),
          ),
          const SizedBox(height: 24),
           Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
              ProfileStatComponent(
                count: (profileData?.reservationCount ?? 0).toString(),
                title: "Reservations",
              ),
              ProfileStatComponent(
                count: (profileData?.connectionsCount ?? 0).toString(),
                title: "Connections",
              ),
              ProfileStatComponent(
                count: (profileData?.favouritesCount ?? 0).toString(),
                title: "Favorites",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
