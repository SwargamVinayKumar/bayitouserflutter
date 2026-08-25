import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_styles.dart';
import '../../utils/custom_color.dart';


class PrimaryButton extends StatelessWidget {
  final dynamic observer;
  final String buttonTxt;
  final VoidCallback buttonClick;
  final  bool? selected;
  const PrimaryButton({super.key, required this.buttonTxt, required this.buttonClick, this.observer, this.selected = true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:buttonClick,
      child: observer == null ? textButton() : Obx(()=> observer.value.maybeWhen(loading: (loading) => Container(
        height: 40,
        width: double.infinity,
        decoration: AppStyles.primaryContainerLoadingStyle,
        child: Center(
            child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 3.0,
                valueColor: const AlwaysStoppedAnimation<Color>(CustomColors.white),
                backgroundColor: CustomColors.white.withOpacity(0.2),
              ),
            )),
      ) ,orElse:() => textButton())
      ),
    );
  }

  Widget textButton(){
    return Container(
      height: 40,
      width: double.infinity,
      decoration: selected == true ? AppStyles.primaryContainerStyle : AppStyles.primaryContainerLoadingStyle,
      child: Center(child: Text(buttonTxt,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),),
    );
  }

}

