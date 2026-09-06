import 'package:flutter/material.dart';

import '../utils/custom_color.dart';


class SideHeadingComponent extends StatelessWidget {
  final String title;
  final int? viewType;
  final bool viewVisible;
  final VoidCallback? viewClick;
  const SideHeadingComponent({super.key, required this.title, required this.viewVisible, this.viewClick,this.viewType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: viewType == 1 ? const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15) :  const EdgeInsets.symmetric(horizontal: 0,vertical: 10),
      child: Row(
        children: [
          Expanded(child: Text(title,style:TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: CustomColors.darkBlack))),
          const SizedBox(width: 20),
          Visibility(
            visible: viewVisible,
            child: InkWell(
              onTap:viewClick,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 0.5,color: CustomColors.darkGray)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  children: [
                    Text("View All ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: CustomColors.darkBlack)),
                    const SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 0.5,color: CustomColors.darkGray)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(Icons.arrow_forward_ios_rounded,color: CustomColors.darkBlack,size: 8),
                      ),
                    )
                  ],
                ),
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
