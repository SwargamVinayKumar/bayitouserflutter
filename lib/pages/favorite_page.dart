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

class FavoritePage extends StatelessWidget {
   FavoritePage({super.key});

  final OutletViewModel outletViewModel = Get.put(OutletViewModel());

  void fetchFavouriteOutlets() {
    outletViewModel.fetchOutlets(
      const PaginationRequestModel(
        page: 1,
        type: "favourites",
      ),
      true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        fetchFavouriteOutlets();
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
                  style: GoogleFonts.plusJakartaSans(
                    color: CustomColors.secondary,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Obx(() {
                    final state = outletViewModel
                        .fetchFavouriteOutletsObserver
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
                        return Center(
                          child: Text(
                            error,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                      success: (response) {
                        final List<OutletModel> outlets = response?.data ?? [];
                        if (outlets.isEmpty) {
                          return Center(
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.favorite_border_rounded,
                                  size: 60,
                                  color: CustomColors.secondary
                                      .withOpacity(0.5),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  "No favorite outlets",
                                  style:
                                  GoogleFonts.sora(
                                    color: CustomColors.secondary,
                                    fontSize: 16,
                                    fontWeight:
                                    FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Your favorite outlets will appear here",
                                  textAlign: TextAlign.center,
                                  style:
                                  GoogleFonts.sora(
                                    color: CustomColors.secondary
                                        .withOpacity(0.6),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                        return ListView.separated(
                          itemCount: outlets.length,
                          separatorBuilder: (_, __) {
                            return const SizedBox(
                              height: 12,
                            );
                          },
                          itemBuilder: (context, index) {
                            final OutletModel outlet = outlets[index];

                            return GestureDetector(
                              onTap: () {
                                Get.to(() => CafeDetailsPage(
                                        outletId: outlet.id ?? "",
                                  ),
                                );
                              },
                              child: CafeCard(
                                outlet: outlet,
                                onTap: () {},
                              ),
                            );
                          },
                        );
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
}