import 'package:bayitouser/api/api_result.dart';
import 'package:bayitouser/models/requestModels/sign_up_request_model.dart';
import 'package:bayitouser/utils/auth_utils.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/view_models/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_gradient_button.dart';
import 'custom_textfield.dart';

class AddressSheet extends StatefulWidget {
  final LocationRequestModel? locationDetails;

  const AddressSheet({super.key, required this.locationDetails});

  @override
  State<AddressSheet> createState() => _AddressSheetState();
}

class _AddressSheetState extends State<AddressSheet> {
  final authViewModel = Get.find<AuthViewModel>();
  
  @override
  void initState() {
    super.initState();
    authViewModel.address1Controller.text = widget.locationDetails?.address1 ?? '';
    authViewModel.address2Controller.text = widget.locationDetails?.address2 ?? '';
    authViewModel.cityController.text = widget.locationDetails?.city ?? '';
    authViewModel.stateController.text = widget.locationDetails?.state ?? '';
    authViewModel.pincodeController.text = widget.locationDetails?.pinCode ?? '';
    authViewModel.landmarkController.text = widget.locationDetails?.landMark ?? '';
    authViewModel.latitudeController.text = widget.locationDetails?.latitude ?? '';
    authViewModel.longitudeController.text = widget.locationDetails?.longitude ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Confirm Address",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.close),
                )
              ],
            ),
            const SizedBox(height: 16),
            CustomTextFieldComponent(
              hintText: "Address Line 1",
              textController: authViewModel.address1Controller,
            ),
            const SizedBox(height: 8),
            CustomTextFieldComponent(
              hintText: "Address Line 2",
              textController: authViewModel.address2Controller,
            ),
            const SizedBox(height: 8),
            CustomTextFieldComponent(
              hintText: "Landmark",
              textController: authViewModel.landmarkController,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: CustomTextFieldComponent(
                    hintText: "City",
                    textController: authViewModel.cityController,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CustomTextFieldComponent(
                    hintText: "State",
                    textController: authViewModel.stateController,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            CustomTextFieldComponent(
              hintText: "Pincode",
              textController: authViewModel.pincodeController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            Obx(() {
              final state = authViewModel.registerUserObserver.value;
              return state.maybeWhen(
                loading: (loading) => const Center(child: CircularProgressIndicator()),
                orElse: () => CustomGradientButton(
                  title: "Confirm & Create Account",
                  onTap: () {
                    final location = LocationRequestModel(
                      address1: authViewModel.address1Controller.text,
                      address2: authViewModel.address2Controller.text,
                      city: authViewModel.cityController.text,
                      state: authViewModel.stateController.text,
                      landMark: authViewModel.landmarkController.text,
                      pinCode: authViewModel.pincodeController.text,
                      latitude: authViewModel.latitudeController.text,
                      longitude: authViewModel.longitudeController.text,
                    );
                    
                    authViewModel.locationDetails.value = location;
                    
                    final validatorResponse = AuthUtils.validateRequestFields(
                      ['address1', 'city', 'state', 'pinCode', 'latitude', 'longitude'],
                      location.toJson(),
                    );
                    
                    if (validatorResponse != null) {
                      Get.snackbar(
                        "Error",
                        validatorResponse,
                        backgroundColor: CustomColors.secondary,
                        colorText: Colors.white,
                        snackPosition: SnackPosition.BOTTOM,
                      );
                      return;
                    }
                    
                    authViewModel.registerUser();
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
