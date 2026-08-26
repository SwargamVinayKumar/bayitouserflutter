import 'package:bayitouser/components/custom_textfield.dart';
import 'package:bayitouser/components/primary_button.dart';
import 'package:bayitouser/pages/location_picker_page.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/view_models/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({super.key});

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  final authViewModel = Get.find<AuthViewModel>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      authViewModel.fetchDesignations();
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(const Duration(days: 365 * 18)),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      authViewModel.dobController.text = DateFormat('yyyy-MM-dd').format(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        title: const Text("Register Profile", style: TextStyle(color: CustomColors.secondary, fontWeight: FontWeight.bold)),
        backgroundColor: CustomColors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Personal Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: CustomColors.secondary)),
            const SizedBox(height: 15),
            CustomTextFieldComponent(
              hintText: "Full Name",
              textController: authViewModel.fullNameController,
              prefixIcon: const Icon(Icons.person_outline, color: CustomColors.secondary),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: AbsorbPointer(
                child: CustomTextFieldComponent(
                  hintText: "Date of Birth",
                  textController: authViewModel.dobController,
                  prefixIcon: const Icon(Icons.calendar_today_outlined, color: CustomColors.secondary),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text("Gender", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: CustomColors.secondary)),
            Obx(() => Row(
              children: [
                Radio<String>(
                  value: "Male",
                  groupValue: authViewModel.gender.value,
                  onChanged: (value) => authViewModel.gender.value = value!,
                  activeColor: CustomColors.secondary,
                ),
                const Text("Male"),
                Radio<String>(
                  value: "Female",
                  groupValue: authViewModel.gender.value,
                  onChanged: (value) => authViewModel.gender.value = value!,
                  activeColor: CustomColors.secondary,
                ),
                const Text("Female"),
                Radio<String>(
                  value: "Other",
                  groupValue: authViewModel.gender.value,
                  onChanged: (value) => authViewModel.gender.value = value!,
                  activeColor: CustomColors.secondary,
                ),
                const Text("Other"),
              ],
            )),
            const SizedBox(height: 20),
            const Text("Professional Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: CustomColors.secondary)),
            const SizedBox(height: 15),
            const Text("Select Designations", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: CustomColors.secondary)),
            const SizedBox(height: 10),
            Obx(() {
              if (authViewModel.fetchDesignationsObserver.value.maybeWhen(loading: (_) => true, orElse: () => false)) {
                return const Center(child: CircularProgressIndicator());
              }
              return Wrap(
                spacing: 8,
                children: authViewModel.designationsList.map((designation) {
                  return Obx(() {
                    final isSelected = authViewModel.selectedDesignations.contains(designation.id);
                    return FilterChip(
                      label: Text(designation.name ?? ""),
                      selected: isSelected,
                      onSelected: (selected) {
                        if (selected) {
                          authViewModel.selectedDesignations.add(designation.id!);
                        } else {
                          authViewModel.selectedDesignations.remove(designation.id);
                        }
                      },
                      selectedColor: CustomColors.secondary.withOpacity(0.2),
                      checkmarkColor: CustomColors.secondary,
                    );
                  });
                }).toList(),
              );
            }),
            const SizedBox(height: 15),
            CustomTextFieldComponent(
              hintText: "Charges per Hour",
              textController: authViewModel.perHourController,
              keyboardType: TextInputType.number,
              prefixIcon: const Icon(Icons.currency_rupee, color: CustomColors.secondary),
            ),
            const SizedBox(height: 20),
            const Text("Location Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: CustomColors.secondary)),
            const SizedBox(height: 10),
            InkWell(
              onTap: () => Get.to(() => const LocationPickerPage()),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: CustomColors.secondary.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.map_outlined, color: CustomColors.secondary),
                    SizedBox(width: 10),
                    Text("Pick Location from Map", style: TextStyle(color: CustomColors.secondary, fontWeight: FontWeight.w500)),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 16, color: CustomColors.secondary),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            CustomTextFieldComponent(
              hintText: "Address Line 1",
              textController: authViewModel.address1Controller,
              prefixIcon: const Icon(Icons.location_on_outlined, color: CustomColors.secondary),
            ),
            const SizedBox(height: 15),
            CustomTextFieldComponent(
              hintText: "Address Line 2",
              textController: authViewModel.address2Controller,
              prefixIcon: const Icon(Icons.location_on_outlined, color: CustomColors.secondary),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: CustomTextFieldComponent(
                    hintText: "City",
                    textController: authViewModel.cityController,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: CustomTextFieldComponent(
                    hintText: "State",
                    textController: authViewModel.stateController,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            CustomTextFieldComponent(
              hintText: "Pincode",
              textController: authViewModel.pincodeController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            const Text("Referral Code (Optional)", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: CustomColors.secondary)),
            const SizedBox(height: 10),
            CustomTextFieldComponent(
              hintText: "Referral Code",
              textController: authViewModel.referralCodeController,
              prefixIcon: const Icon(Icons.card_giftcard, color: CustomColors.secondary),
            ),
            const SizedBox(height: 30),
            PrimaryButton(
              buttonTxt: "Register Now",
              observer: authViewModel.registerUserObserver,
              buttonClick: () {
                authViewModel.registerUser();
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
