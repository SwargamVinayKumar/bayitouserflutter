import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';

import '../api/api_result.dart';
import '../components/empty_data_view.dart';
import '../components/featured_place_card.dart';
import '../models/requestModels/page_request_model.dart';
import '../models/responseModels/outlet_response_model.dart';
import '../models/responseModels/page_model.dart';
import '../shimmer/home_page_shimmer.dart';
import '../utils/app_styles.dart';
import '../utils/custom_color.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/auth_view_model.dart';
import '../view_models/outlet_view_model.dart';

class OutletsMapView extends StatefulWidget {
  final String? outletId;
  const OutletsMapView({super.key, this.outletId});

  @override
  State<OutletsMapView> createState() => _OutletsMapViewState();
}

class _OutletsMapViewState extends State<OutletsMapView> {
  GoogleMapController? mapController;
  final ScrollController _listScrollController = ScrollController();

  BitmapDescriptor? unselectedIcon;
  BitmapDescriptor? selectedIcon;
  String? selectedMarkerId;
  bool _isFirstLoad = true;

  final authViewModel = Get.find<AuthViewModel>();
  final outletViewModel = Get.find<OutletViewModel>();

  LatLng? selectedLocation;

  final TextEditingController searchController = TextEditingController();
  RxString searchQuery = "".obs;
  Timer? _debounce;
  bool _isProgrammaticMove = false;

  @override
  void initState() {
    super.initState();
    _loadMarkerIcons();
    _listScrollController.addListener(_onListScroll);
  }

  void _onListScroll() {
    if (_listScrollController.position.pixels >= _listScrollController.position.maxScrollExtent - 200) {
      _refreshData(null, isRefresh: false);
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _listScrollController.dispose();
    super.dispose();
  }

  Future<void> _loadMarkerIcons() async {
    unselectedIcon = await BitmapDescriptor.asset(
        const ImageConfiguration(size: Size(40, 40)),
        'assets/images/pin.png', width: 40, height: 40 // Using pin.png for now
    );

    selectedIcon = await BitmapDescriptor.asset(
        const ImageConfiguration(size: Size(60, 60)),
        'assets/images/pin.png', width: 60, height: 60
    );

    final details = authViewModel.locationPosition.value;
    if (details != null) {
      selectedLocation = LatLng(
        details.latitude,
        details.longitude,
      );
    }

    setState(() {});
  }

  Set<Marker> _getMarkers(List<OutletModel>? outlets) {
    Set<Marker> newMarkers = {};

    for (var loc in outlets ?? []) {
      String id = loc.id ?? "";
      String outletType = loc.outletType ?? "Unknown";

      newMarkers.add(
        Marker(
          markerId: MarkerId(id),
          position: LatLng(
            loc.location?.latitude ?? 0.0,
            loc.location?.longitude ?? 0.0,
          ),
          infoWindow: InfoWindow(
            title: loc.businessName ?? "",
            snippet: "Type: $outletType",
          ),
          icon: (selectedMarkerId == id)
              ? selectedIcon ?? BitmapDescriptor.defaultMarker
              : unselectedIcon ?? BitmapDescriptor.defaultMarker,
          onTap: () {
            setState(() {
              selectedMarkerId = id;
            });
            searchQuery.value = "";
            searchController.text = "";
            _refreshData(selectedMarkerId);
          },
        ),
      );
    }
    return newMarkers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: StatefulWrapper(
        onInit: () async {
          await _refreshData(null);
        },
        child: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(Icons.arrow_back_ios_new, color: CustomColors.secondary),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: CustomColors.secondary.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(Icons.search, color: CustomColors.secondary),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                        controller: searchController,
                                        onChanged: (query) {
                                          searchQuery.value = query;
                                          _onSearchChanged();
                                        },
                                        style: const TextStyle(
                                            color: CustomColors.secondary,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16
                                        ),
                                        decoration: const InputDecoration(
                                          counterText: '',
                                          hintText: 'Search By Address, Name..',
                                          hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Obx(() => searchQuery.value.isEmpty ? const SizedBox() : 
                                      GestureDetector(
                                            onTap: () {
                                              searchController.clear();
                                              searchQuery.value = "";
                                              _refreshData(null);
                                            },
                                            child: const SizedBox(height: 20, width: 20, child: Center(child: Icon(Icons.cancel_outlined, color: CustomColors.secondary))))),
                                  )
                                ],),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Obx(
                          () => outletViewModel.fetchMapLocationsObserver.value.data.value
                          .maybeWhen(
                        loading: (data) {

                          return Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              GoogleMap(
                                initialCameraPosition: CameraPosition(
                                  target: LatLng(authViewModel.locationPosition.value?.latitude ?? 0, authViewModel.locationPosition.value?.longitude ?? 0),
                                  zoom: 14,
                                ),
                                myLocationEnabled: true,
                                onCameraMove: _onCameraMove,
                                onCameraIdle: _onCameraIdle,
                                onMapCreated: (controller) {
                                  mapController = controller;
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                child: HomePageShimmer(),
                              )
                            ],
                          );
                        },
                        success: (response) {
                          final outletsList = response?.data ?? [];
                          final Set<Marker> mapMarkers = _getMarkers(outletsList);

                          if (outletsList.isNotEmpty && selectedMarkerId == null && _isFirstLoad) {
                            _isFirstLoad = false;
                            final first = outletsList.first;
                            if (first.location?.latitude != null && first.location?.longitude != null) {
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                moveToPosition(
                                  first.location!.latitude!,
                                  first.location!.longitude!,
                                );
                              });
                            }
                          }

                          return Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              GoogleMap(
                                initialCameraPosition: CameraPosition(
                                  target: LatLng(authViewModel.locationPosition.value?.latitude ?? 0, authViewModel.locationPosition.value?.longitude ?? 0),
                                  zoom: 14,
                                ),
                                myLocationEnabled: true,
                                markers: mapMarkers,
                                onTap: _onMapTapped,
                                onCameraMove: _onCameraMove,
                                onCameraIdle: _onCameraIdle,
                                onMapCreated: (controller) {
                                  mapController = controller;
                                },
                              ),
                              _buildBottomList(outletsList, outletViewModel.fetchMapLocationsObserver.value),
                            ],
                          );
                        },
                        orElse: () => const EmptyDataView(text: "No Outlets Found"),
                      ),
                    ),
                  ),
                ],
              ),
              Obx(() => outletViewModel.fetchMapLocationsObserver.value.data.value.maybeWhen(
                loading: (loading) => outletsListEmpty() ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.1),
                  child: const Center(child: CircularProgressIndicator(color: CustomColors.secondary)),
                ) : const SizedBox(),
                orElse: () => const SizedBox())),
            ],
          ),
        ),
      ),
    );
  }

  bool outletsListEmpty() {
    return outletViewModel.fetchMapLocationsObserver.value.data.value.maybeWhen(
      success: (data) => (data?.data ?? []).isEmpty,
      orElse: () => true,
    );
  }

  Widget _buildBottomList(List<OutletModel> outletsList, PaginationModel pagination) {
    if (outletsList.isEmpty) return const SizedBox();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SizedBox(
          height: 200, // Reduced height
          child: ListView.separated(
            controller: _listScrollController,
            scrollDirection: Axis.horizontal,
            itemCount: outletsList.length + (pagination.isPaginationCompleted ? 0 : 1),
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              if (index == outletsList.length) {
                return SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.6, // Reduced width
                  child: const Center(child: CircularProgressIndicator(color: CustomColors.secondary)),
                );
              }
              return SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.6, // Reduced width
                child: FeaturedPlaceCard(outlet: outletsList[index]),
              );
            },
          )),
    );
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      _refreshData(null, isRefresh: true);
    });
  }

  Future<void> _refreshData(String? selectedMarkerId, {bool isRefresh = true}) async {
    print("hello1");
    await outletViewModel.fetchMapLocations(
        PaginationRequestModel(
          page: 1,
          query: searchQuery.value,
          outletId: selectedMarkerId ?? (widget.outletId ?? ""),
          latitude: selectedLocation?.latitude ?? authViewModel.locationPosition.value?.latitude,
          longitude: selectedLocation?.longitude ?? authViewModel.locationPosition.value?.longitude,
        ),
        isRefresh
    );
  }

  void _onMapTapped(LatLng tappedPoint) {
    // selectedLocation = tappedPoint;
  }

  void _onCameraMove(CameraPosition position) {
    if (_isProgrammaticMove) return;
    selectedLocation = position.target;
    _isFirstLoad = false;
  }

  void _onCameraIdle() {
    if (_isProgrammaticMove) return;
    
    // Set loading state and fetch data only after camera stops
    outletViewModel.fetchMapLocationsObserver.value.data.value =  ApiResult.loading("loading");
    _refreshData(null, isRefresh: true);
  }

  Future<void> moveToPosition(double lat, double lng, {double zoom = 14}) async {
    if (mapController != null) {
      _isProgrammaticMove = true;
      await mapController!.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(lat, lng),
            zoom: zoom,
          ),
        ),
      );
      _isProgrammaticMove = false;
    }
  }
}
