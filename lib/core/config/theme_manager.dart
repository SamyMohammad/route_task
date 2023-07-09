import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../utils/font_manager.dart';
import '../utils/styles_manager.dart';
import '../utils/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: ColorManager.primary,
    // primaryColorLight: ColorManager.lightPrimary,
    // primaryColorDark: ColorManager.darkPrimary,
    // disabledColor: ColorManager.grey1,
    // splashColor: ColorManager.lightPrimary,
    // ripple effect color
    // cardview theme

    // app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primary,
        titleTextStyle:
            getRegularStyle(fontSize: FontSize.s16, color: Colors.white)),
    // button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      // disabledColor: ColorManager.hintText,
      buttonColor: ColorManager.primary,
      // splashColor: ColorManager.hintText
    ),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle:
                getRegularStyle(color: Colors.white, fontSize: FontSize.s17),
            backgroundColor: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),
  );
}
