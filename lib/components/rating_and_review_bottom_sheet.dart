import 'package:bayitouser/components/primary_button.dart';
import 'package:bayitouser/view_models/outlet_view_model.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../models/requestModels/booking_request_model.dart';
import '../utils/app_styles.dart';
import '../utils/custom_color.dart';
import 'custom_edit_text_component.dart';





class RatingAndReviewBottomSheet extends StatefulWidget {
  final String outletId;
  final String tableId;
  const RatingAndReviewBottomSheet({super.key, required this.outletId,required this.tableId});

  @override
  State<RatingAndReviewBottomSheet> createState() => _RatingAndReviewBottomSheetState();
}

class _RatingAndReviewBottomSheetState extends State<RatingAndReviewBottomSheet> {
  final TextEditingController reviewController = TextEditingController();
  final outletViewModel = Get.put(OutletViewModel());
  RxDouble ratingValue = 1.0.obs;
  RxString ratedFor = "Value for Money".obs;

  List<String> ratingTypes = [
    "Value for Money",
    "Cleanliness",
    "Safety & Security",
    "Food Quality",
    "Location",
    "Other"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),color: CustomColors.white),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom, // handle keyboard
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // makes sheet wrap content
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(child: Text("Rating And Review",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: CustomColors.textColor),)),
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(Icons.cancel,size: 30,color: CustomColors.primary,))
                  ],
                ),
                const SizedBox(height: 10),
                DottedLine(dashColor: CustomColors.midGray),
                const SizedBox(height: 20),
                RatingBar.builder(
                  initialRating: 1,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 30,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Image.asset("assets/images/star.png"),
                  onRatingUpdate: (rating) {
                    ratingValue.value = rating;
                  },
                ),
                const SizedBox(height: 10),
                CustomEditTextComponent(controller: reviewController, title: "Enter You Rating And Review", hint: "Rating And Review",containerHeight:100),
                const SizedBox(height: 10),
                Wrap(
                    spacing: 8,
                    children: ratingTypes.map((item) {
                      return InkWell(
                          onTap: (){
                            ratedFor.value = item;
                            // Get.to(() => SearchPage(type: "Search",search: item));
                          }, child: Obx(() => CustomChip(label: item,isSelected:ratedFor.value ==  item))
                      );
                    }).toList()
                ),
                const SizedBox(height: 10),
                Obx(() => outletViewModel.addRatingAndReviewObserver.value.maybeWhen(
                  loading: (loading) => const Center(child: CircularProgressIndicator()),
                    orElse: () => PrimaryButton(buttonTxt: "Submit", buttonClick: (){
                      outletViewModel.addRatingAndReview(RatingReviewRequestModel(outletId: widget.outletId,tableId:widget.tableId,rating:ratingValue.value,ratedFor:ratedFor.value,review: reviewController.text),context);
                    }))),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  final String label;
  final bool? isSelected;
  const CustomChip({super.key, required this.label, this.isSelected = null});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: isSelected == null ? AppStyles.categoryBg3 : isSelected ==  true ? AppStyles.selectedCategoryBg : BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey.shade400,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

