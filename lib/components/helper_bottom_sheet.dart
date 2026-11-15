import 'package:bayitouser/view_models/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/custom_color.dart';

class HelperBottomSheet extends StatelessWidget {
  final String? assetImage;
  final String? title;
  final String? message;
  final String? btn1Txt;
  final String? btn2Txt;
  final VoidCallback btn1Click;
  final VoidCallback? btn2Click;
  final bool? forNotifyMe;
  final AuthViewModel authViewModel;
  const HelperBottomSheet({super.key, this.assetImage, this.title, this.message, this.btn1Txt, this.btn2Txt, required this.btn1Click, this.btn2Click,this.forNotifyMe = false,required this.authViewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: CustomColors.white,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom, // handle keyboard
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min, // makes sheet wrap content
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              SizedBox(height: 150,width: 150,child: Image.asset(assetImage ?? "assets/images/no_data_founded.png")),
              const SizedBox(height: 10),
              Text(title ?? "",textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: CustomColors.primary),),
              const SizedBox(height: 10),
              Text(message ?? "",textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.darkGray),),
              if(forNotifyMe == true) Obx(() {
                if (authViewModel.fetchDesignationsObserver.value.maybeWhen(loading: (_) => true, orElse: () => false)) {
                  return  const Center(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      Text("Loading...",style: TextStyle(fontSize: 15,color: CustomColors.secondary,fontWeight: FontWeight.w600),)
                    ],
                  ));
                }
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.30,
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: 8,
                      children: authViewModel.designationsList.map((designation) {
                        return Obx(() {
                          final isSelected = authViewModel.selectedDesignations.contains(designation.id);
                          return FilterChip(
                            label: Text(designation.name ?? ""),
                            selected: isSelected,
                            onSelected: (selected) {
                              if (selected) {
                                authViewModel.selectedDesignations.add(designation.id!);
                              } else {
                                authViewModel.selectedDesignations.remove(designation.id);
                              }
                            },
                            selectedColor: CustomColors.secondary.withOpacity(0.2),
                            checkmarkColor: CustomColors.secondary,
                          );
                        });
                      }).toList(),
                    ),
                  ),
                );
              }),
              if(forNotifyMe == true) Obx(() {
                if (authViewModel.notifyMeObserver.value.maybeWhen(loading: (_) => true, orElse: () => false)) {
                  return  const Center(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      Text("Please Wait...",style: TextStyle(fontSize: 15,color: CustomColors.secondary,fontWeight: FontWeight.w600),)
                    ],
                  ));
                }
                return const SizedBox();
              }),
              const SizedBox(height: 35),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    if (btn1Txt?.isNotEmpty == true)
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: CustomColors.white,
                            border: Border.all(width: 0.5,color: CustomColors.darkGray)
                          ),
                          child: TextButton(
                            onPressed: btn1Click,
                            child: Text(
                              btn1Txt ?? "",
                              style: TextStyle(
                                color: CustomColors.secondary,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (btn2Txt?.isNotEmpty == true)
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: CustomColors.secondary,
                          ),
                          child: TextButton(
                            onPressed: btn2Click,
                            child: Text(
                              btn2Txt ?? "",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
