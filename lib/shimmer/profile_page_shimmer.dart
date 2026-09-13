import 'package:dotted_line/dotted_line.dart';
import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../utils/custom_color.dart';

class ProfilePageShimmer extends StatelessWidget {
  const ProfilePageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: CustomColors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(color: CustomColors.white,borderRadius:BorderRadius.circular(20),boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // subtle shadow
                      blurRadius: 10, // how soft the shadow is
                      offset: const Offset(1, 6), // horizontal, vertical offset
                    )],),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0), // Add some padding inside the card
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 50),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: GestureDetector(
                              onTap: () {
                                // Get.to(() => RegisterUserPage(userModel: userModel));
                              },
                              child: FadeShimmer.round(
                                size: 80,
                                millisecondsDelay: 300,
                                highlightColor: Colors.grey.shade200,
                                baseColor:Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          IntrinsicWidth(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 10),
                                    FadeShimmer(
                                      height: 20,
                                      width: 100,
                                      radius: 10,
                                      millisecondsDelay: 300,
                                      highlightColor: Colors.grey.shade200,
                                      baseColor:Colors.white,
                                    ),
                                    const SizedBox(height: 5),
                                    FadeShimmer(
                                      height: 20,
                                      width: 150,
                                      radius: 10,
                                      millisecondsDelay: 320,
                                      highlightColor: Colors.grey.shade200,
                                      baseColor:Colors.white,
                                    ),
                                    const SizedBox(height: 20),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              iconShimmer(1),
                              Container(width: 0.5, height: 50, color: CustomColors.darkGray),
                              iconShimmer(2),
                              Container(width: 0.5, height: 50, color: CustomColors.darkGray),
                              iconShimmer(3),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    profileMenu(1),
                    DottedLine(dashColor: CustomColors.darkGray),
                    profileMenu(2),
                    DottedLine(dashColor: CustomColors.darkGray),
                    profileMenu(3),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 100)
        ],
      ),
    );
  }

  Widget profileMenu(int index){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        children: [
          FadeShimmer.round(
        size: 30,
        millisecondsDelay: index * 300,
        highlightColor: Colors.grey.shade200,
        baseColor:Colors.white,
      ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FadeShimmer(
              height: 20,
              width: 130,
              radius: 10,
              millisecondsDelay: index*350,
              highlightColor: Colors.grey.shade200,
              baseColor:Colors.white,
            ),
          ),
          Spacer(),
          FadeShimmer(
            height: 20,
            width: 20,
            radius: 10,
            millisecondsDelay: index*400,
            highlightColor: Colors.grey.shade200,
            baseColor:Colors.white,
          ),
        ],
      ),
    );
  }

  Widget iconShimmer(int index){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FadeShimmer(
          height: 20,
          width: 20,
          radius: 10,
          millisecondsDelay: index*400,
          highlightColor: Colors.grey.shade200,
          baseColor:Colors.white,
        ),
        SizedBox(height: 2),
        FadeShimmer(
          height: 20,
          width: 50,
          radius: 10,
          millisecondsDelay: index*400,
          highlightColor: Colors.grey.shade200,
          baseColor:Colors.white,
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
