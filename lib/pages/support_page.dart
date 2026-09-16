import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/responseModels/auth_response_model.dart';
import '../utils/custom_color.dart';
import '../components/custom_action_button.dart';

class SupportPage extends StatelessWidget {
  final ContactSupportModel? supportData;

  const SupportPage({super.key, this.supportData});

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    }
  }

  Future<void> _sendEmail(String email) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    }
  }

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
          "Help & Support",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: CustomColors.secondary,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "How can we help you?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColors.secondary,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Have questions or need assistance? Reach out to our support team and we'll get back to you as soon as possible.",
              style: TextStyle(
                fontSize: 16,
                color: CustomColors.secondary.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 40),
            _buildSupportItem(
              icon: Icons.email_outlined,
              title: "Email Us",
              subtitle: supportData?.supportEmail ?? "support@bayito.com",
              onTap: () => _sendEmail(supportData?.supportEmail ?? "support@bayito.com"),
            ),
            const SizedBox(height: 20),
            _buildSupportItem(
              icon: Icons.phone_outlined,
              title: "Call Us",
              subtitle: supportData?.supportNumber ?? "+91 1234567890",
              onTap: () => _makePhoneCall(supportData?.supportNumber ?? "+91 1234567890"),
            ),
            const Spacer(),
            Center(
              child: Text(
                "Version 1.0.1",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSupportItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: CustomColors.secondary.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: CustomColors.secondary.withOpacity(0.1)),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: CustomColors.secondary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: CustomColors.secondary),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: CustomColors.secondary.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 16, color: CustomColors.secondary.withOpacity(0.3)),
          ],
        ),
      ),
    );
  }
}
