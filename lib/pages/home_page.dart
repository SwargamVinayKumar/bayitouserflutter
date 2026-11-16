import 'package:bayitouser/components/custom_action_button.dart';
import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/shimmer/home_page_shimmer.dart';
import 'package:bayitouser/components/empty_data_view.dart';
import 'package:bayitouser/components/featured_place_card.dart';
import 'package:bayitouser/components/home_menu_card.dart';
import 'package:bayitouser/components/responsive_sliver_grid.dart';
import 'package:bayitouser/pages/outlet_page.dart';
import 'package:bayitouser/pages/meet_people_page.dart';
import 'package:bayitouser/pages/reservation_page.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:bayitouser/view_models/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/helper_bottom_sheet.dart';
import '../components/section_title_item.dart';
import '../models/requestModels/page_request_model.dart';
import '../models/responseModels/auth_response_model.dart';
import '../models/responseModels/outlet_response_model.dart';
import '../models/responseModels/user_response_model.dart';
import '../utils/custom_color.dart';
import 'package:get/get.dart';

import '../utils/snack_bar_extension.dart';
import '../view_models/outlet_view_model.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  final OutletViewModel outletViewModel = Get.put(OutletViewModel());
  final AuthViewModel authViewModel = Get.put(AuthViewModel());


  @override
  Widget build(BuildContext context) {

    Future<void> notifyMeAction(bool edit,List<DesignationModel> selectedDesignations) async {



      authViewModel.selectedDesignations.clear();
      authViewModel.selectedDesignations.assignAll(selectedDesignations.map((e) => e.id ?? "").where((id) => id.isNotEmpty) ?? []);


      showModalBottomSheet(
        context:
        context,
        isScrollControlled:
        true, // allows full height scroll
        shape:
        const RoundedRectangleBorder(
          borderRadius:
          BorderRadius.vertical(top: Radius.circular(16)),
        ),
        builder: (context) {
          return HelperBottomSheet(
              assetImage: "assets/images/notifyme.png",
              title: "Notify Me",
              message: "Select Designations you want to notified by",
              btn1Txt: "Cancel",
              btn1Click: () {
                Get.back();
              },
              forNotifyMe: true,
              btn2Txt: "Save",
              authViewModel: authViewModel,
              btn2Click: () async {
                if(authViewModel.selectedDesignations.isEmpty){
                  Get.showCustomSnackBar(title: 'Error', message:"Select atleast one designation to be notified");
                  return;
                }
                await authViewModel.notifyMe(authViewModel.selectedDesignations);
                Get.close(1);
              });
        },
      );

    }

    return StatefulWrapper(
      onInit: () {
        if(authViewModel.designationsList.isEmpty){
          authViewModel.fetchDesignations();
        }
        authViewModel.fetchProfileDetails();
        outletViewModel.fetchOutlets(
          const PaginationRequestModel(
            page: 1,
            type: "trending",
          ),
          true,
        );
      },
      onStart: (){

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
                  MediaQuery.sizeOf(context).height * 0.12,
                  decoration: BoxDecoration(
                    color: CustomColors.secondary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/bayitoLogo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    SectionTitleItem(
                      title: "Quick Access",
                      fontSize: 16,

                    ),
                    // Text(
                    //   "See All",
                    //   style: TextStyle(
                    //     color: CustomColors.secondary
                    //         .withOpacity(0.7),
                    //     fontSize: 14,
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
                  ],
                ),
                const Divider(
                  height: 1,
                  thickness: 0.4,
                ),
                const SizedBox(height: 18),
                ResponsiveSliverGrid(),
                const SizedBox(height: 16),
                const Divider(
                  height: 1,
                  thickness: 0.4,
                ),
                Obx(() => authViewModel.fetchProfileDetailObserver.value.maybeWhen(success: (data){
                  final profileData = (data as ProfileResponseModel).data;
                  NotifyMeModel? notifyMeModelData = profileData?.notifyMe == null ? null : NotifyMeModel.fromJson(profileData?.notifyMe);
                  return notifyMeModelData == null ? Column(
                    children: [
                      const SizedBox(height: 10),
                      CustomGradientButton(title: "Notify Me", onTap: (){
                        notifyMeAction(false,[]);
                      }),
                    ],
                  ) : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(() => MeetPeoplePage(designations: notifyMeModelData.designations));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(color: CustomColors.white),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("Notify Me Allowed",style: TextStyle(fontSize: 12,color: CustomColors.secondary,fontWeight: FontWeight.w900),),
                                      SizedBox(height: 5,),
                                      const Text("You will be notified once the selected users booked a table..",style: TextStyle(fontSize: 9,color: CustomColors.secondary,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 5,),
                                      // Text((notifyMeModelData.designations?.map((designation) => designation.name) ?? []).join(", "),style: TextStyle(fontSize: 9,fontWeight: FontWeight.w700,color: CustomColors.orange),),
                                      SizedBox(height: 5,),
                                      Text(profileData?.notifyMeText ?? "",style: TextStyle(fontSize: 12,color: CustomColors.red,fontWeight: FontWeight.w700),),
                                    ],

                                  ),
                                ),
                                GestureDetector(onTap: (){
                                  notifyMeAction(true,notifyMeModelData.designations ?? []);
                                }, child: Container(height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: CustomColors.secondary),child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(children: [Icon(Icons.edit_notifications,color: CustomColors.white,size: 20,),Text(" Edit ",style: TextStyle(color: CustomColors.white,fontWeight: FontWeight.w800),)],),
                                )))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ]
                  );
                }, orElse: () => const SizedBox())),
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
                              () => const OutletPage(
                            type: "trending",
                          ),
                        );
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
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
                      return const HomePageShimmer();
                    },
                    errorData: (e) => const SizedBox.shrink(),
                    loading: (_) {
                      return const HomePageShimmer();
                    },
                    error: (error) {
                      return SizedBox(
                        height: 200,
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
                        height: 200,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
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
