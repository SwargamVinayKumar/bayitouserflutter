import 'package:bayitouser/components/custom_search_bar.dart';
import 'package:bayitouser/pages/cafe_detail_page.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/cafe_card.dart';
import '../components/custom_action_button.dart';
import '../models/requestModels/page_request_model.dart';
import '../models/responseModels/outlet_response_model.dart';
import '../utils/custom_color.dart';
import '../view_models/outlet_view_model.dart';
import 'package:get/get.dart';


class CafePage extends StatefulWidget {

  final String type;

  const CafePage({super.key,required this.type});

  @override
  State<CafePage> createState() => _CafePageState();
}

class _CafePageState extends State<CafePage> {

  final OutletViewModel outletViewModel = Get.put(OutletViewModel());

  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void fetchInitialOutlets() {
    outletViewModel.fetchOutlets(
      PaginationRequestModel(
        page: 1,
        type: widget.type,
      ),
      true,
    );
  }

  void searchCafe(String value) {
    final searchText = value.trim();

    if (searchText.isEmpty) {
      fetchInitialOutlets();
      return;
    }
    outletViewModel.fetchOutlets(
      PaginationRequestModel(
        page: 1,
        type: "search",
        query: searchText,
      ),
      true,
    );
  }

  String get pageTitle {
    switch (widget.type) {
      case "nearby":
        return "Nearby Places";

      case "all":
        return "Book Table";

      case "trending":
        return "Trending Places";

      default:
        return "Places";
    }
  }

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        fetchInitialOutlets();
      },
      child: Scaffold(
        backgroundColor: CustomColors.primary,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    CustomActionButton(
                      icon: Icons.arrow_back_ios_new_rounded,
                      onTap: () {
                        Get.back();
                      },
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        pageTitle,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: CustomColors.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                CustomSearchBar(
                  controller: searchController,
                  onChanged: (value) {
                    setState(() {});
                    searchCafe(value);
                  },
                ),
                const SizedBox(height: 18),
                Expanded(
                  child: Obx(() {
                    final searchText = searchController.text.trim();
                    if (searchText.isNotEmpty) {
                      return _buildSearchList();
                    }
                    if (widget.type == "nearby") {
                      return _buildNearbyList();
                    }
                    if (widget.type == "all") {
                      return _buildAllOutletList();
                    }
                    if (widget.type == "trending") {
                      return _buildTrendingList();
                    }
                    return const SizedBox();
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildSearchList() {
    final state = outletViewModel
        .fetchSearchedOutletsObserver
        .value
        .data
        .value;

    return state.when(
      init: () {
        return const SizedBox();
      },

      loading: (_) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },

      error: (error) {
        return _buildError(error);
      },

      success: (response) {
        final outlets = response?.data ?? [];

        return _buildOutletList(outlets);
      },
    );
  }

  Widget _buildNearbyList() {
    final state = outletViewModel
        .fetchNearbyOutletsObserver
        .value
        .data
        .value;

    return state.when(
      init: () {
        return const SizedBox();
      },

      loading: (_) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },

      error: (error) {
        return _buildError(error);
      },

      success: (response) {
        final outlets = response?.data ?? [];

        return _buildOutletList(outlets);
      },
    );
  }

  Widget _buildAllOutletList() {
    final state = outletViewModel
        .fetchOutletObserver
        .value
        .data
        .value;

    return state.when(
      init: () {
        return const SizedBox();
      },

      loading: (_) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },

      error: (error) {
        return _buildError(error);
      },

      success: (response) {
        final outlets = response?.data ?? [];

        return _buildOutletList(outlets);
      },
    );
  }

  Widget _buildTrendingList() {
    final state = outletViewModel
        .fetchTrendingOutletsObserver
        .value
        .data
        .value;

    return state.when(
      init: () {
        return const SizedBox();
      },

      loading: (_) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },

      error: (error) {
        return _buildError(error);
      },

      success: (response) {
        final outlets = response?.data ?? [];

        return _buildOutletList(outlets);
      },
    );
  }
  Widget _buildOutletList(
      List<OutletModel> outlets,
      ) {
    if (outlets.isEmpty) {
      return const Center(
        child: Text(
          "No outlets found",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      );
    }

    return ListView.separated(
      itemCount: outlets.length,
      separatorBuilder: (_, __) {
        return const SizedBox(height: 12);
      },
      itemBuilder: (context, index) {
        final cafe = outlets[index];

        return GestureDetector(
          onTap: () {
            Get.to(() => CafeDetailsPage(
              outletId: cafe.id ?? "",
              ),
            );
          },
          child: CafeCard(
            outlet: cafe,
            onTap: () {},
          ),
        );
      },
    );
  }

  Widget _buildError(String error) {
    return Center(
      child: Text(
        error,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}