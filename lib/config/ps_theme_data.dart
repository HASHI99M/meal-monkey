import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_colors.dart';
import 'package:meal_monkey/config/ps_config.dart';

ThemeData themeData() {
  return ThemeData(
      primaryColor: PsColors.MAIN_COLOR,
      // primaryColorDark: PsColors.mainDarkColor,
      // primaryColorLight: PsColors.mainLightColor,
      scaffoldBackgroundColor: PsColors.WHITE_COLOR,
      textTheme: TextTheme(
        headline1: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family),
        headline2: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family),
        headline3: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family),
        headline4: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family,
            fontWeight: FontWeight.bold),
        headline5: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family,
            fontWeight: FontWeight.bold),
        headline6: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family),
        subtitle1: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family,
            fontWeight: FontWeight.bold),
        subtitle2: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family,
            fontWeight: FontWeight.bold),
        bodyText1: TextStyle(
          color: PsColors.PRIMARY_FONT_COLOR,
          fontFamily: PsConfig.ps_default_font_family,
        ),
        bodyText2: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family,
            fontWeight: FontWeight.bold,
            fontSize: 16),
        button: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family),
        caption: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family),
        overline: TextStyle(
            color: PsColors.PRIMARY_FONT_COLOR,
            fontFamily: PsConfig.ps_default_font_family),
      ),
      iconTheme: IconThemeData(color: PsColors.WHITE_COLOR),
      appBarTheme: AppBarTheme(color: PsColors.WHITE_COLOR),
      fontFamily: PsConfig.ps_default_font_family);
}
