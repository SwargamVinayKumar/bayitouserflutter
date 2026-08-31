import 'package:bayitouser/components/empty_data_view.dart';
import 'package:bayitouser/components/featured_place_card.dart';
import 'package:bayitouser/components/home_menu_card.dart';
import 'package:bayitouser/pages/cafe_page.dart';
import 'package:bayitouser/pages/meet_people_page.dart';
import 'package:bayitouser/pages/reservation_page.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/section_title_item.dart';
import '../models/requestModels/page_request_model.dart';
import '../models/responseModels/outlet_response_model.dart';
import '../utils/custom_color.dart';
import 'package:get/get.dart';

import '../view_models/outlet_view_model.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  final OutletViewModel outletViewModel = Get.put(OutletViewModel());

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        outletViewModel.fetchOutlets(
          const PaginationRequestModel(
            page: 1,
            type: "trending",
          ),
          true,
        );
      },
      child: Scaffold(
        backgroundColor: CustomColors.primary,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height:
                  MediaQuery.sizeOf(context).height * 0.22,
                  decoration: BoxDecoration(
                    color: CustomColors.secondary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/bayitoLogo.jpeg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    const SectionTitleItem(
                      title: "Quick Access",
                      fontSize: 16,
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.sora(
                        color: CustomColors.secondary
                            .withOpacity(0.7),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 1,
                  thickness: 0.4,
                ),
                const SizedBox(height: 18),
                GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  shrinkWrap: true,
                  physics:
                  const NeverScrollableScrollPhysics(),
                  children: [
                    HomeMenuCard(
                      title: "Nearby",
                      subtitle: "Discover places",
                      icon: Icons.location_on_rounded,
                      gradient: const [
                        Color(0xffa30c0f),
                        Color(0xffdc5512),
                      ],
                      onTap: () {
                        Get.to(
                              () => const CafePage(
                            type: "nearby",
                          ),
                        );
                      },
                    ),
                    HomeMenuCard(
                      title: "Book Table",
                      subtitle: "Reserve instantly",
                      icon: Icons.table_restaurant,
                      gradient: const [
                        Color(0xff55069a),
                        Color(0xffd625a6),
                      ],
                      onTap: () {
                        Get.to(
                              () => const CafePage(
                            type: "all",
                          ),
                        );
                      },
                    ),
                    HomeMenuCard(
                      title: "Meet People",
                      subtitle: "Connect nearby",
                      icon: Icons.handshake,
                      gradient: const [
                        Color(0xff3E2723),
                        Color(0xff5D4037),
                      ],
                      onTap: () {
                        Get.to(() => const MeetPeoplePage(),
                        );
                      },
                    ),
                    HomeMenuCard(
                      title: "Reservations",
                      subtitle: "Booking history",
                      icon: Icons.event,
                      gradient: const [
                        Color(0xff048035),
                        Color(0xff3d8f40),
                      ],
                      onTap: () {
                        Get.to(() => const ReservationPage(showBackArrow: true,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    const SectionTitleItem(
                      title: "Trending Places",
                      fontSize: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                              () => const CafePage(
                            type: "trending",
                          ),
                        );
                      },
                      child: Text(
                        "See All",
                        style: GoogleFonts.sora(
                          color: CustomColors.secondary
                              .withOpacity(0.7),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),

                const Divider(
                  height: 1,
                  thickness: 0.4,
                ),

                const SizedBox(height: 12),
                Obx(() {
                  final state = outletViewModel
                      .fetchTrendingOutletsObserver
                      .value
                      .data
                      .value;

                  return state.when(
                    init: () {
                      return const SizedBox(
                        height: 150,
                      );
                    },
                    loading: (_) {
                      return const SizedBox(
                        height: 150,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                    error: (error) {
                      return SizedBox(
                        height: 150,
                        child: Center(
                          child: Text(
                            error,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                    success: (response) {
                      final outlets = response?.data ?? [];
                      if (outlets.isEmpty) {
                        return const EmptyDataView(text: "No trending places found");
                      }
                      return SizedBox(
                        height:
                        MediaQuery.sizeOf(context).height * 0.2,
                        child: ListView.separated(
                          scrollDirection:
                          Axis.horizontal,
                          itemCount: outlets.length,
                          separatorBuilder: (_, __) {
                            return const SizedBox(
                              width: 12,
                            );
                          },
                          itemBuilder:
                              (context, index) {
                            final outlet =
                            outlets[index];

                            return SizedBox(
                              width:
                              MediaQuery.sizeOf(
                                context,
                              ).width *
                                  0.34,
                              child:
                              FeaturedPlaceCard(
                                outlet: outlet,
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
