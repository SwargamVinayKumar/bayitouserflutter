import 'package:bayitouser/pages/outlets_map_view.dart';
import 'package:bayitouser/shimmer/single_item_shimmer.dart';
import 'package:bayitouser/shimmer/outlet_list_shimmer.dart';
import 'package:bayitouser/components/custom_search_bar.dart';
import 'package:bayitouser/pages/outlet_detail_page.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/outlet_card.dart';
import '../components/custom_action_button.dart';
import '../models/requestModels/page_request_model.dart';
import '../models/responseModels/outlet_response_model.dart';
import '../models/responseModels/page_model.dart';
import '../utils/custom_color.dart';
import '../view_models/outlet_view_model.dart';
import 'package:get/get.dart';

class OutletPage extends StatefulWidget {
  final String type;
  const OutletPage({super.key, required this.type});

  @override
  State<OutletPage> createState() => _OutletPageState();
}

class _OutletPageState extends State<OutletPage> {
  final OutletViewModel outletViewModel = Get.put(OutletViewModel());
  final TextEditingController searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      final searchText = searchController.text.trim();
      if (searchText.isNotEmpty) {
        searchOutlet(searchText, isRefresh: false);
      } else {
        fetchInitialOutlets(isRefresh: false);
      }
    }
  }

  @override
  void dispose() {
    searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void fetchInitialOutlets({bool isRefresh = true}) {
    outletViewModel.fetchOutlets(
      PaginationRequestModel(
        page: 1,
        type: widget.type,
      ),
      isRefresh,
    );
  }

  void searchOutlet(String value, {bool isRefresh = true}) {
    final searchText = value.trim();
    if (searchText.isEmpty) {
      fetchInitialOutlets(isRefresh: true);
      return;
    }
    outletViewModel.fetchOutlets(
      PaginationRequestModel(
        page: 1,
        type: "search",
        query: searchText,
      ),
      isRefresh,
    );
  }

  String get pageTitle {
    switch (widget.type) {
      case "nearby": return "Nearby Places";
      case "all": return "Book Table";
      case "trending": return "Trending Places";
      default: return "Places";
    }
  }

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        fetchInitialOutlets(isRefresh: true);
      },
      child: Scaffold(
        backgroundColor: CustomColors.primary,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    CustomActionButton(
                      icon: Icons.arrow_back_ios_new_rounded,
                      onTap: () => Get.back(),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        pageTitle,
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: CustomColors.secondary),
                      ),
                    ),
                    if (widget.type == "nearby")
                      IconButton(
                        onPressed: () {
                          Get.to(() => const OutletsMapView());
                        },
                        icon: const Icon(Icons.map_outlined, color: CustomColors.secondary),
                      ),
                  ],
                ),
                const SizedBox(height: 24),
                CustomSearchBar(
                  controller: searchController,
                  onChanged: (value) {
                    setState(() {});
                    searchOutlet(value);
                  },
                ),
                const SizedBox(height: 18),
                Expanded(
                  child: Obx(() {
                    final searchText = searchController.text.trim();
                    PaginationModel paginationModel;
                    if (searchText.isNotEmpty) {
                      paginationModel = outletViewModel.fetchSearchedOutletsObserver.value;
                    } else if (widget.type == "nearby") {
                      paginationModel = outletViewModel.fetchNearbyOutletsObserver.value;
                    } else if (widget.type == "all") {
                      paginationModel = outletViewModel.fetchOutletObserver.value;
                    } else {
                      paginationModel = outletViewModel.fetchTrendingOutletsObserver.value;
                    }

                    return paginationModel.data.value.when(
                      init: () => const SizedBox(),
                      loading: (_) => paginationModel.page == 1 
                          ? const OutletListShimmer() 
                          : _buildOutletList(paginationModel),
                      error: (error) => _buildError(error),
                      success: (response) {
                        final outlets = response?.data ?? [];
                        if (outlets.isEmpty) {
                          return const Center(child: Text("No outlets found", style: TextStyle(color: Colors.white, fontSize: 15)));
                        }
                        return _buildOutletList(paginationModel);
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOutletList(PaginationModel pagination) {
    final List<OutletModel> outlets = (pagination.data.value as dynamic).maybeWhen(
      success: (response) => response?.data ?? [],
      orElse: () => <OutletModel>[],
    );

    return RefreshIndicator(
      onRefresh: () async {
        final searchText = searchController.text.trim();
        if (searchText.isNotEmpty) {
          searchOutlet(searchText, isRefresh: true);
        } else {
          fetchInitialOutlets(isRefresh: true);
        }
      },
      child: ListView.separated(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: outlets.length + (pagination.isPaginationCompleted ? 0 : 1),
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          if (index == outlets.length) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SingleOutletShimmer(),
            );
          }
          final outlet = outlets[index];
          return GestureDetector(
            onTap: () {
              Get.to(() => OutletDetailsPage(outletId: outlet.id ?? ""));
            },
            child: OutletCard(outlet: outlet, onTap: () {}),
          );
        },
      ),
    );
  }

  Widget _buildError(String error) {
    return Center(child: Text(error, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white)));
  }
}
