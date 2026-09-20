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
            const Text(
              "Privacy & Support Information",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: CustomColors.secondary,
              ),
            ),
            const SizedBox(height: 25),
            _buildInfoItem(
              "1. Activities Outside the Bayito Space",
              "Bayito is not responsible for any activities, interactions, meetings, travel, relationships, or incidents that occur after users leave the Bayito-authorized café or venue.",
            ),
            _buildInfoItem(
              "2. Respectful Behavior Inside Bayito Spaces",
              "Users must maintain appropriate and respectful behavior inside Bayito spaces. Excessive noise, intimate behavior, or romantic activities that disturb other customers or staff are not permitted.",
            ),
            _buildInfoItem(
              "3. Unauthorized Transactions & Fraud",
              "Bayito is not responsible for any fraud, financial transaction, business deal, or other transaction conducted outside Bayito-authorized services or spaces.",
            ),
            _buildInfoItem(
              "4. Unauthorized Services",
              "Any service, arrangement, offer, or activity provided or accepted outside Bayito's officially authorized platform or services is independent of Bayito, and Bayito does not assume responsibility for it.",
            ),
            _buildInfoItem(
              "5. User-to-User Contact After the Meeting",
              "If users exchange phone numbers, social-media accounts, or other contact information and continue communicating or meeting outside the Bayito space, those subsequent interactions are between the users and are not controlled or managed by Bayito.",
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(String title, String content) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: CustomColors.secondary.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: CustomColors.secondary.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: CustomColors.secondary,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: CustomColors.secondary.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
