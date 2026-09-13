import 'package:bayitouser/shimmer/single_item_shimmer.dart';
import 'package:bayitouser/pages/outlet_detail_page.dart';
import 'package:bayitouser/shimmer/outlet_list_shimmer.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/empty_data_view.dart';
import '../components/outlet_card.dart';
import '../components/custom_action_button.dart';
import '../models/requestModels/page_request_model.dart';
import '../models/responseModels/outlet_response_model.dart';
import '../models/responseModels/page_model.dart';
import '../utils/custom_color.dart';
import '../view_models/outlet_view_model.dart';
import 'package:get/get.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final OutletViewModel outletViewModel = Get.put(OutletViewModel());
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      fetchFavouriteOutlets();
    }
  }

  void fetchFavouriteOutlets({bool isRefresh = false}) {
    outletViewModel.fetchOutlets(
      const PaginationRequestModel(
        page: 1,
        type: "favourites",
      ),
      isRefresh,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        fetchFavouriteOutlets(isRefresh: true);
      },
      child: Scaffold(
        backgroundColor: CustomColors.primary,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  "Favorites",
                  style: TextStyle(
                    color: CustomColors.secondary,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Obx(() {
                    final paginationModel = outletViewModel.fetchFavouriteOutletsObserver.value;
                    final state = paginationModel.data.value;

                    return state.when(
                      init: () => const SizedBox(),
                      loading: (_) => paginationModel.page == 1 
                          ? const OutletListShimmer() 
                          : _buildList(paginationModel),
                      error: (error) => Center(
                        child: Text(
                          error,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      success: (response) {
                        if ((response?.data ?? []).isEmpty) {
                          return _buildEmptyView();
                        }
                        return _buildList(paginationModel);
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

  Widget _buildList(PaginationModel pagination) {
    final outlets = (pagination.data.value as dynamic).maybeWhen(
      success: (response) => response?.data ?? [],
      orElse: () => <OutletModel>[],
    );

    return RefreshIndicator(
      onRefresh: () async => fetchFavouriteOutlets(isRefresh: true),
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

          final OutletModel outlet = outlets[index];
          return GestureDetector(
            onTap: () {
              Get.to(() => OutletDetailsPage(outletId: outlet.id ?? ""));
            },
            child: OutletCard(
              outlet: outlet,
              onTap: () {},
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyView() {
    return Center(
      child: Center(child: EmptyDataView(text: "No favorite outlets! \n \nYour favorite outlets will appear here ")),
    );
  }
}
