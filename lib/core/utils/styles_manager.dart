import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle getTextStyle(
    {double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextOverflow? overflow}) {
  return TextStyle(
      overflow: overflow,
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    TextOverflow? overflow}) {
  return getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: color,
      overflow: overflow);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    TextOverflow? overflow}) {
  return getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
      color: color,
      overflow: overflow);
}

// medium style

TextStyle getLightStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    TextOverflow? overflow}) {
  return getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.light,
      color: color,
      overflow: overflow);
}

// bold style

TextStyle getBoldStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    TextOverflow? overflow}) {
  return getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
      color: color,
      overflow: overflow);
}

// semibold style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12,
    required Color color,
    TextOverflow? overflow}) {
  return getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color,
      overflow: overflow);
}
