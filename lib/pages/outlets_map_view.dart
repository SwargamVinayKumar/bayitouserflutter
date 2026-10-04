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
  // ---------- Controllers ----------
  GoogleMapController? mapController;
  final ScrollController _listScrollController = ScrollController();
  final TextEditingController searchController = TextEditingController();

  // ---------- Markers ----------
  BitmapDescriptor? unselectedIcon;
  BitmapDescriptor? selectedIcon;
  String? selectedMarkerId;

  // ---------- State ----------
  final RxString searchQuery = "".obs;
  LatLng? selectedLocation;
  bool _isFirstLoad = true;
  bool _isProgrammaticMove = false;

  // ---------- Debounce timers ----------
  Timer? _searchDebounce;
  Timer? _cameraDebounce;

  // ---------- Constants ----------
  static const _debounceDuration = Duration(milliseconds: 500);

  final authViewModel = Get.find<AuthViewModel>();
  final outletViewModel = Get.find<OutletViewModel>();

  @override
  void initState() {
    super.initState();
    _loadMarkerIcons();
    _listScrollController.addListener(_onListScroll);
  }

  @override
  void didUpdateWidget(covariant OutletsMapView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.outletId != widget.outletId) {
      _refreshData(widget.outletId, isRefresh: true);
    }
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    _cameraDebounce?.cancel();
    _listScrollController.dispose();
    searchController.dispose();
    super.dispose();
  }

  // ------------------------------------------------------------------
  // Init / markers
  // ------------------------------------------------------------------
  Future<void> _loadMarkerIcons() async {
    final results = await Future.wait<BitmapDescriptor>([
      BitmapDescriptor.asset(
        const ImageConfiguration(size: Size(40, 40)),
        'assets/images/pin.png',
        width: 40,
        height: 40,
      ),
      BitmapDescriptor.asset(
        const ImageConfiguration(size: Size(60, 60)),
        'assets/images/pin.png',
        width: 60,
        height: 60,
      ),
    ]);
    unselectedIcon = results[0];
    selectedIcon = results[1];

    final details = authViewModel.locationPosition.value;
    if (details != null) {
      selectedLocation = LatLng(details.latitude, details.longitude);
    }
    if (mounted) setState(() {});
  }

  Set<Marker> _getMarkers(List<OutletModel>? outlets) {
    final markers = <Marker>{};
    for (final loc in outlets ?? const <OutletModel>[]) {
      final id = loc.id ?? "";
      if (id.isEmpty) continue;

      final lat = loc.location?.latitude;
      final lng = loc.location?.longitude;
      if (lat == null || lng == null) continue;

      markers.add(
        Marker(
          markerId: MarkerId(id),
          position: LatLng(lat, lng),
          infoWindow: InfoWindow(
            title: loc.businessName ?? "",
            snippet: "Type: ${loc.outletType ?? "Unknown"}",
          ),
          icon: (selectedMarkerId == id)
              ? (selectedIcon ?? BitmapDescriptor.defaultMarker)
              : (unselectedIcon ?? BitmapDescriptor.defaultMarker),
          onTap: () {
            if (selectedMarkerId == id) return;
            setState(() => selectedMarkerId = id);
            // Clear search when a marker is selected.
            if (searchController.text.isNotEmpty) {
              searchController.clear();
              searchQuery.value = "";
            }
            // Pan to the tapped marker programmatically (no re-fetch).
            moveToPosition(lat, lng);
          },
        ),
      );
    }
    return markers;
  }

  // ------------------------------------------------------------------
  // Bottom list scroll (pagination)
  // ------------------------------------------------------------------
  void _onListScroll() {
    if (!_listScrollController.hasClients) return;
    final pos = _listScrollController.position;
    if (pos.pixels >= pos.maxScrollExtent - 200) {
      _loadMore();
    }
  }

  Future<void> _loadMore() async {
    final pagination = outletViewModel.fetchMapLocationsObserver.value;
    if (pagination.isPaginationCompleted) return;
    if (pagination.isLoading) return;

    await outletViewModel.fetchMapLocations(
      PaginationRequestModel(
        page: (pagination.page ?? 0) + 1,
        query: searchQuery.value,
        outletId: selectedMarkerId ?? (widget.outletId ?? ""),
        latitude: selectedLocation?.latitude ??
            authViewModel.locationPosition.value?.latitude,
        longitude: selectedLocation?.longitude ??
            authViewModel.locationPosition.value?.longitude,
      ),
      false, // append, don't refresh
    );
  }

  // ------------------------------------------------------------------
  // Search debounce
  // ------------------------------------------------------------------
  void _onSearchChanged(String value) {
    searchQuery.value = value;
    _searchDebounce?.cancel();
    _searchDebounce = Timer(_debounceDuration, () {
      _isFirstLoad = true;
      _refreshData(selectedMarkerId, isRefresh: true);
    });
  }

  void _clearSearch() {
    if (searchController.text.isEmpty) return;
    searchController.clear();
    searchQuery.value = "";
    _searchDebounce?.cancel();
    _isFirstLoad = true;
    _refreshData(selectedMarkerId, isRefresh: true);
  }

  // ------------------------------------------------------------------
  // Camera callbacks
  // ------------------------------------------------------------------
  void _onCameraMove(CameraPosition position) {
    if (_isProgrammaticMove) return;
    // Track the pending target; do NOT fire API here.
    selectedLocation = position.target;
  }

  void _onCameraIdle() {
    if (_isProgrammaticMove) {
      _isProgrammaticMove = false;
      return;
    }
    // Debounce: only fetch if user has stopped moving for _debounceDuration.
    _cameraDebounce?.cancel();
    _cameraDebounce = Timer(_debounceDuration, () {
      _isFirstLoad = false;
      _refreshData(selectedMarkerId, isRefresh: true);
    });
  }

  void _onMapTapped(LatLng tappedPoint) {
    // Optional: dismiss keyboard when tapping the map.
    FocusScope.of(context).unfocus();
  }

  Future<void> moveToPosition(
      double lat,
      double lng, {
        double zoom = 14,
      }) async {
    final controller = mapController;
    if (controller == null) return;

    _isProgrammaticMove = true;
    try {
      await controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(lat, lng), zoom: zoom),
        ),
      );
    } finally {
      // _onCameraIdle will also flip this, but guard anyway.
      _isProgrammaticMove = false;
    }
  }

  // ------------------------------------------------------------------
  // Data fetch
  // ------------------------------------------------------------------
  Future<void> _refreshData(
      String? selectedMarkerId, {
        bool isRefresh = true,
      }) async {
    final authLoc = authViewModel.locationPosition.value;
    await outletViewModel.fetchMapLocations(
      PaginationRequestModel(
        page: 1,
        query: searchQuery.value, // <-- search text sent as query
        outletId: selectedMarkerId ?? (widget.outletId ?? ""),
        latitude: selectedLocation?.latitude ?? authLoc?.latitude,
        longitude: selectedLocation?.longitude ?? authLoc?.longitude,
      ),
      isRefresh,
    );
  }

  // ------------------------------------------------------------------
  // Build
  // ------------------------------------------------------------------
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
          child: Column(
            children: [
              _buildSearchBar(),
              Expanded(child: _buildMapSection()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            InkWell(
              onTap: Get.back,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.arrow_back_ios_new,
                    color: CustomColors.secondary),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: CustomColors.secondary.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.search,
                          color: CustomColors.secondary),
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: searchController,
                        onChanged: _onSearchChanged,
                        textInputAction: TextInputAction.search,
                        style: const TextStyle(
                          color: CustomColors.secondary,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        decoration: const InputDecoration(
                          counterText: '',
                          hintText: 'Search By Address, Name..',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Obx(() {
                      if (searchQuery.value.isEmpty) return const SizedBox();
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: _clearSearch,
                          child: const SizedBox(
                            height: 20,
                            width: 20,
                            child: Center(
                              child: Icon(Icons.cancel_outlined,
                                  color: CustomColors.secondary),
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMapSection() {
    return Obx(() {
      final result =
          outletViewModel.fetchMapLocationsObserver.value.data.value;

      return result.maybeWhen(
        loading: (_) => _buildMapWithLoadingOverlay(),
        success: (response) {
          final outletsList = response?.data ?? const <OutletModel>[];
          final mapMarkers = _getMarkers(outletsList);

          // Auto-fit first result once per refresh.
          if (outletsList.isNotEmpty && _isFirstLoad) {
            _isFirstLoad = false;
            final first = outletsList.first;
            final lat = first.location?.latitude;
            final lng = first.location?.longitude;
            if (lat != null && lng != null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                moveToPosition(lat, lng);
              });
            }
          }

          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildGoogleMap(markers: mapMarkers),
              _buildBottomList(
                outletsList,
                outletViewModel.fetchMapLocationsObserver.value,
              ),
            ],
          );
        },
        orElse: () => const EmptyDataView(text: "No Outlets Found"),
      );
    });
  }

  Widget _buildMapWithLoadingOverlay() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _buildGoogleMap(markers: const {}),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: HomePageShimmer(),
        ),
      ],
    );
  }

  Widget _buildGoogleMap({required Set<Marker> markers}) {
    final authLoc = authViewModel.locationPosition.value;
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(
          authLoc?.latitude ?? 0,
          authLoc?.longitude ?? 0,
        ),
        zoom: 14,
      ),
      myLocationEnabled: true,
      myLocationButtonEnabled: false,
      markers: markers,
      onTap: _onMapTapped,
      onCameraMove: _onCameraMove,
      onCameraIdle: _onCameraIdle,
      onMapCreated: (controller) {
        mapController = controller;
      },
    );
  }

  Widget _buildBottomList(
      List<OutletModel> outletsList,
      PaginationModel pagination,
      ) {
    if (outletsList.isEmpty) return const SizedBox();

    final hasMore = !pagination.isPaginationCompleted;
    final itemCount = outletsList.length + (hasMore ? 1 : 0);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SizedBox(
        height: 200,
        child: ListView.separated(
          controller: _listScrollController,
          scrollDirection: Axis.horizontal,
          itemCount: itemCount,
          separatorBuilder: (_, __) => const SizedBox(width: 12),
          itemBuilder: (context, index) {
            final cardWidth = MediaQuery.sizeOf(context).width * 0.6;
            if (index == outletsList.length) {
              return SizedBox(
                width: cardWidth,
                child: const Center(
                  child: CircularProgressIndicator(
                      color: CustomColors.secondary),
                ),
              );
            }
            return SizedBox(
              width: cardWidth,
              child: FeaturedPlaceCard(outlet: outletsList[index]),
            );
          },
        ),
      ),
    );
  }
}