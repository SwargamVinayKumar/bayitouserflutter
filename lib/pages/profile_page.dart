import 'package:bayitouser/components/profile_header_component.dart';
import 'package:bayitouser/components/profile_item_component.dart';
import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F3F0),
      body: Column(
        children: [
          const ProfileHeaderComponent(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              children: const [
                ProfileItemComponent(
                  icon: Icons.edit_outlined,
                  title: "Edit Profile",
                ),
                ProfileItemComponent(
                  icon: Icons.credit_card_outlined,
                  title: "Payment Methods",
                ),
                ProfileItemComponent(
                  icon: Icons.security_outlined,
                  title: "Privacy & Security",
                ),
                ProfileItemComponent(
                  icon: Icons.settings_outlined,
                  title: "Settings",
                ),
                ProfileItemComponent(
                  icon: Icons.help_outline_rounded,
                  title: "Help & Support",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




