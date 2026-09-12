import 'package:bayitouser/components/empty_data_view.dart';
import 'package:bayitouser/components/profile_header_component.dart';
import 'package:bayitouser/components/profile_item_component.dart';
import 'package:bayitouser/pages/sign_in_page.dart';
import 'package:bayitouser/shimmer/profile_page_shimmer.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:bayitouser/view_models/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import '../components/helper_bottom_sheet.dart';
import '../models/responseModels/auth_response_model.dart';
import '../utils/preference_manager.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final authViewModel = Get.put(AuthViewModel());
  final preferenceManager = Get.find<PreferenceManager>();

  final logOuting = false.obs;


  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (){
        authViewModel.fetchProfileDetails();
      },
      child: Scaffold(
        backgroundColor: CustomColors.primary,
        body: SingleChildScrollView(
          child: Obx(() => authViewModel.fetchProfileDetailObserver.value.maybeWhen(success: (data){
            final userModel = (data as ProfileResponseModel).data;
            return Column(
              children: [
                Obx(() =>
                    ProfileHeaderComponent(profileData:userModel,loading: logOuting.value,onLogout: (){
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
                        builder:
                            (context) {
                          return HelperBottomSheet(
                              assetImage: "assets/images/log_out.png",
                              title: "Are you sure you want to log out?",
                              message: "You will need to sign in again to access your account.",
                              btn1Txt: "NO",
                              btn1Click: () {
                                Get.back();
                              },
                              btn2Txt: "Yes",
                              btn2Click: () async {
                                Get.back();
                                logOuting.value = true;
                                await preferenceManager.clearAll();
                                // await _auth.signOut();
                                // await _googleSignIn.signOut();
                                logOuting.value = false;
                                Get.offAll(() => SignInPage());
                              });
                        },
                      );
                      // logOutConfirmationDialog(userModel);
                    }),
                ),
                ProfileItemComponent(
                  icon: Icons.edit_outlined,
                  title: "Edit Profile",
                ),
                ProfileItemComponent(
                  icon: Icons.security_outlined,
                  title: "Privacy & Security",
                ),
                // ProfileItemComponent(
                //   icon: Icons.settings_outlined,
                //   title: "Settings",
                // ),
                ProfileItemComponent(
                  icon: Icons.help_outline_rounded,
                  title: "Help & Support",
                ),
              ],
            );
          },loading: (ds) => const ProfilePageShimmer(),orElse: () => const SizedBox(height:400,child: Center(child: EmptyDataView(text: "Something went wrong please try again")))),
          ),
        ),
      ),
    );
  }
}




