import 'package:flutter/material.dart';

import 'custom_color.dart';

class AppStyles {
  AppStyles._();

      static  final  bottomBg = BoxDecoration(color: CustomColors.white,borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)));

      static final gradient = BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
        colors: [
          CustomColors.primary,
          CustomColors.primary1,
          CustomColors.primary2,
          CustomColors.primary3,
        ],
        transform: GradientRotation(0.1), // rotates the gradient (in radians)
      )
      );


  static final lightGradient = BoxDecoration(
      gradient: LinearGradient(
        colors: [
          CustomColors.primary.withOpacity(0.2),
          CustomColors.primary1.withOpacity(0.2),
          CustomColors.primary2.withOpacity(0.2),
          CustomColors.primary3.withOpacity(0.2),
        ],
        transform: GradientRotation(0.1), // rotates the gradient (in radians)
      )
  );

      static  final  selectedCategoryBg = BoxDecoration(
          color:  CustomColors.primary.withOpacity(0.2)
          ,borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 0.5,
              color: CustomColors.primary
          )
      );


  static  final  primaryBackground = BoxDecoration(
      color: CustomColors.primary
      ,borderRadius: BorderRadius.circular(15)
  );

      static  final  categoryBg1 = BoxDecoration(
          color: const  Color(0xFFF5D4D4).withOpacity(0.2)
          ,borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 0.5,
              color: const Color(0xFFF3BEBE)
          )
      );

      static  final  categoryBg2 = BoxDecoration(
          color: const Color(0xFFB8F8C7).withOpacity(0.2)
          ,borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 0.5,
              color: const Color(0xFFB8F8C7)
          )
      );

      static  final  categoryBg3 = BoxDecoration(
        color: const Color(0xFFB7DFF5).withOpacity(0.2)
        ,borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 0.5,
          color: const Color(0xFFB7DFF5)
        )
      );


      static  final  categoryBg4 = BoxDecoration(
          color: const Color(0xFFDAEDFF).withOpacity(0.2)
          ,borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 0.5,
              color: const Color(0xFFB2E0FD)
          )
      );

      static  final  categoryBg5 = BoxDecoration(
          color: const Color(0xFFD7D1D1).withOpacity(0.2)
          ,borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 0.5,
              color: const Color(0xFFD7D1D1)
          )
      );

  static  final  categoryBg6 = BoxDecoration(
      color: const Color(0xFFFFFFFF).withOpacity(0.2)
      ,borderRadius: BorderRadius.circular(15),
      border: Border.all(
          width: 0.5,
          color: const Color(0xFFD7D1D1)
      )
  );


      static  final  whiteCircleBg = BoxDecoration(
          color: CustomColors.white
          ,borderRadius: BorderRadius.circular(500),
          border: Border.all(
              width: 0.5,
              color: const Color(0xFFD7D1D1)
          )
      );

  static  final  redBg5 = BoxDecoration(
      color: const Color(0xFFFFA7A7).withOpacity(0.2)
      ,borderRadius: BorderRadius.circular(15),
      border: Border.all(
          width: 0.5,
          color: const Color(0xFFF80505)
      )
  );


  static  final  primaryCircleBg = BoxDecoration(
      color: CustomColors.primary
      ,borderRadius: BorderRadius.circular(500),
      border: Border.all(
          width: 0.5,
          color: const Color(0xFFD7D1D1)
      )
  );


  static  final  lightBlueCircleBg = BoxDecoration(
      color: const Color(0xFFB7DFF5).withOpacity(0.2)
      ,borderRadius: BorderRadius.circular(500),
      border: Border.all(
          width: 0.5,
          color: const Color(0xFFD7D1D1)
      )
  );

    static  final  googleContainerStyle = BoxDecoration(
        color: Colors.white
        ,borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
    );

  static  final  selectedContainerStyle = BoxDecoration(
    color: CustomColors.primary
    ,borderRadius: BorderRadius.circular(15),
      border: Border.all(
          width: 0.5,
          color: CustomColors.primary
      ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 2,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static  final  editTextBg = BoxDecoration(
      color: Colors.white
      ,borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: CustomColors.textColor.withOpacity(0.5), // Set the border color (you can adjust the shade of green)
        width: 0.5, // Set the border width
      )
  );

  static  final  outOfStockContainerStyle = BoxDecoration(
    color: Colors.red.withOpacity(0.5)
    ,borderRadius: BorderRadius.circular(15),
    border: Border.all(
        width: 0.5,
        color: Colors.red
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 2,
        offset: const Offset(0, 3),
      ),
    ],
  );

    static  final  primaryContainerStyle = BoxDecoration(
        gradient: LinearGradient(
          colors: [
            CustomColors.primary,
            CustomColors.primary1,
            CustomColors.primary2,
            CustomColors.primary3,
          ],
          transform: GradientRotation(0.1), // rotates the gradient (in radians)
        )
        ,borderRadius: BorderRadius.circular(200)
    );


    static  final  primaryContainerLoadingStyle = BoxDecoration(
      gradient: LinearGradient(
        colors: [
          CustomColors.primary.withOpacity(0.5),
          CustomColors.primary1.withOpacity(0.5),
          CustomColors.primary2.withOpacity(0.5),
          CustomColors.primary3.withOpacity(0.5),
        ],
        transform: GradientRotation(0.1), // rotates the gradient (in radians)
      )
      ,borderRadius: BorderRadius.circular(200)
  );

    static  final  horizontalGradient = LinearGradient(
      colors: [
        CustomColors.primary,
        CustomColors.primary1,
        CustomColors.primary2,
        CustomColors.primary3,
      ],
      transform: GradientRotation(0.1), // rotates the gradient (in radians)
    );


    static final strokeBorder = BoxDecoration(color: CustomColors.white,borderRadius: BorderRadius.circular(200),border: Border.all(width: 0.8,color: Color(0xFFE2E2E2)));


  static  final  secondaryContainerStyle = BoxDecoration(
      color: Colors.white
      ,borderRadius: BorderRadius.circular(15)
  );

  static  const  textError = TextStyle(
      color: Colors.red
      ,fontWeight: FontWeight.w600,
       fontSize: 14
  );
}