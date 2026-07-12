
import 'package:bayitouser/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/custom_color.dart';


class EmptyDataViewWithButton extends StatelessWidget {
  final String? imageAsset;
  final String? title;
  final String? message;
  final String? buttonText;
  final VoidCallback onClick;
  const EmptyDataViewWithButton({super.key,this.imageAsset, this.title, this.message,this.buttonText,required this.onClick});


  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: CustomColors.white,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(imageAsset ?? "assets/images/login_required.png",width: 100,height: 100,),
              const SizedBox(height: 12),

              // Title
              Text(
                title ?? 'Login Required',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              // Description
              Text(
                message ?? 'Please log in to access this feature and enjoy all the benefits of your account.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
              ),

              const SizedBox(height: 32),

              PrimaryButton(buttonTxt: buttonText ?? "Log In", buttonClick: (){
                onClick();
              })
              // Login Button
            ],
          ),
        ),
      ),
    );
  }
}