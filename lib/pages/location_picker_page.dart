import 'dart:async';
import 'package:bayitouser/components/address_sheet.dart';
import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/models/requestModels/sign_up_request_model.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/utils/geo_util.dart';
import 'package:bayitouser/view_models/auth_view_model.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPickerPage extends StatefulWidget {
  const LocationPickerPage({super.key});

  @override
  State<LocationPickerPage> createState() => _LocationPickerPageState();
}

class _LocationPickerPageState extends State<LocationPickerPage> {
  final authViewModel = Get.find<AuthViewModel>();
  GoogleMapController? mapController;
  LatLng? selectedLocation;
  LocationRequestModel? selectedLocationAddress;
  bool isSheetOpen = false;

  @override
  void initState() {
    super.initState();
    final currentPos = authViewModel.locationPosition.value;
    if (currentPos != null) {
      selectedLocation = LatLng(currentPos.latitude, currentPos.longitude);
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentPosition = authViewModel.locationPosition.value;
    LatLng initialCenter = selectedLocation ?? 
        LatLng(currentPosition?.latitude ?? 0, currentPosition?.longitude ?? 0);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
        ),
        title: const Text(
          'Pick Location',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: initialCenter,
                zoom: 18,
              ),
              myLocationEnabled: true,
              onCameraMove: _onCameraMove,
              onMapCreated: (controller) {
                mapController = controller;
              },
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 35),
                child: Icon(Icons.location_on, size: 45, color: CustomColors.secondary),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                padding: const EdgeInsets.all(20),
                child: FutureBuilder<Placemark?>(
                  future: _fetchAddress(),
                  builder: (context, snapshot) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.location_on_sharp, color: CustomColors.secondary),
                            SizedBox(width: 8),
                            Text(
                              "Selected Location",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        if (snapshot.connectionState == ConnectionState.waiting)
                          const LinearProgressIndicator()
                        else if (snapshot.hasData && snapshot.data != null)
                          Text(
                            '${snapshot.data!.street ?? ''}, ${snapshot.data!.subLocality ?? ''}, ${snapshot.data!.locality ?? ''}',
                            style: const TextStyle(fontSize: 14),
                          )
                        else
                          const Text("Finding address..."),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: CustomGradientButton(
                                title: "Confirm",
                                onTap: () {
                                  if (selectedLocationAddress != null) {
                                    _showBottomSheet(context);
                                  }
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onCameraMove(CameraPosition position) {
    setState(() {
      selectedLocation = position.target;
    });
  }

  Future<Placemark?> _fetchAddress() async {
    if (selectedLocation == null) return null;
    
    Completer<Placemark?> completer = Completer();
    
    EasyDebounce.debounce('map_address', const Duration(milliseconds: 500), () async {
      final placeMark = await GeoUtil().getAddressFromLatLng(
        selectedLocation!.latitude,
        selectedLocation!.longitude,
      );
      
      if (placeMark != null) {
        selectedLocationAddress = LocationRequestModel(
          address1: '${placeMark.street ?? ''} ${placeMark.subLocality ?? ''}',
          address2: placeMark.locality ?? '',
          city: placeMark.locality ?? '',
          state: placeMark.administrativeArea ?? '',
          pinCode: placeMark.postalCode ?? '',
          latitude: selectedLocation!.latitude.toString(),
          longitude: selectedLocation!.longitude.toString(),
        );
      }
      completer.complete(placeMark);
    });
    
    return completer.future;
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => AddressSheet(locationDetails: selectedLocationAddress),
    );
  }
}
