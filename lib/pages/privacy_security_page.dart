import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/custom_color.dart';
import '../components/custom_action_button.dart';

class PrivacySecurityPage extends StatelessWidget {
  const PrivacySecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        backgroundColor: CustomColors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomActionButton(
            icon: Icons.arrow_back_ios_new_rounded,
            onTap: () => Get.back(),
          ),
        ),
        title: const Text(
          "Privacy & Security",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: CustomColors.secondary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader("Account Security"),
            _buildSecurityItem(
              icon: Icons.lock_outline,
              title: "Change Password",
              subtitle: "Update your account password regularly",
              onTap: () {
                // TODO: Implement change password
              },
            ),
            _buildSecurityItem(
              icon: Icons.phonelink_lock_outlined,
              title: "Two-Step Verification",
              subtitle: "Add an extra layer of security to your account",
              onTap: () {},
            ),
            const SizedBox(height: 30),
            _buildSectionHeader("Privacy"),
            _buildSecurityItem(
              icon: Icons.privacy_tip_outlined,
              title: "Privacy Policy",
              subtitle: "Read our privacy policy to understand how we use your data",
              onTap: () {},
            ),
            _buildSecurityItem(
              icon: Icons.description_outlined,
              title: "Terms of Service",
              subtitle: "Read our terms and conditions",
              onTap: () {},
            ),
            _buildSecurityItem(
              icon: Icons.delete_outline,
              title: "Delete Account",
              subtitle: "Permanently remove your account and data",
              onTap: () {
                _showDeleteAccountDialog(context);
              },
              isCritical: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 5),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: CustomColors.secondary,
        ),
      ),
    );
  }

  Widget _buildSecurityItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    bool isCritical = false,
  }) {
    final color = isCritical ? Colors.red : CustomColors.secondary;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: color),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: color,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  void _showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Delete Account"),
        content: const Text("Are you sure you want to permanently delete your account? This action cannot be undone."),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              // TODO: Implement delete account logic
              Get.back();
            },
            child: const Text("Delete", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
