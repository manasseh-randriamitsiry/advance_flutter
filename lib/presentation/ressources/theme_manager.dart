import 'package:advance_flutter_practice/presentation/ressources/color_manager.dart';
import 'package:advance_flutter_practice/presentation/ressources/styles_manager.dart';
import 'package:advance_flutter_practice/presentation/ressources/values_manager.dart';
import 'package:flutter/material.dart';

import 'font_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    // main color
    primaryColor: ColorManager.primary,
    primaryColorDark: ColorManager.darkGrey,
    primaryColorLight: ColorManager.primaryOpacity70,
    disabledColor: ColorManager.grey.withOpacity(0.2),
    hintColor: ColorManager.grey,
    // ripple color
      splashColor: ColorManager.primaryOpacity70,
    // card theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    // appBar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16
      )
    ),
    // button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.grey.withOpacity(0.5),
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70
    ),

    // elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12)
        )
      )
    ),
    // text theme
    textTheme: TextTheme(
      headlineMedium: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: FontSize.s16),
      bodySmall: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: FontSize.s14),
    ),

    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorManager.grey.withOpacity(0.5),
      ),
        labelStyle: getMediumStyle(color: ColorManager.darkGrey),
      errorStyle: getRegularStyle(color: ColorManager.error),
      // enabled
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1_5
        ),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
      ),

      // focused
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5
        ),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
      ),

      // error
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorManager.error,
              width: AppSize.s1_5
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
      ),

      // focused error
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorManager.primary,
              width: AppSize.s1_5
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
      ),
    ),

  );
}