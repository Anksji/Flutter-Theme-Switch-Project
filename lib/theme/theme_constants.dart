

import 'package:flutter/material.dart';
import 'package:flutter_theme/constants/color_const.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: COLOR_CONST.primaryColor,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: COLOR_CONST.primaryAccentColor
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0)
        )
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
          COLOR_CONST.primaryAccentColor
      ),
      elevation: MaterialStateProperty.all<double>(8.0),

    ),
  ),
    shadowColor: COLOR_CONST.primaryColor.withOpacity(0.3),
  textTheme: const TextTheme(
    headline4: TextStyle(color: COLOR_CONST.gray800,fontWeight: FontWeight.bold),
    headline5: TextStyle(color: COLOR_CONST.gray800,fontWeight: FontWeight.bold),

    subtitle1: TextStyle(color:COLOR_CONST.gray600,fontWeight: FontWeight.normal )

  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: BorderSide.none
    ),
    filled: true,
    fillColor: COLOR_CONST.gray300.withOpacity(0.2)
  )
);

ThemeData darkTheme=ThemeData(
  brightness: Brightness.dark,
    accentColor: COLOR_CONST.white,
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all<Color>(COLOR_CONST.gray300),
      thumbColor: MaterialStateProperty.all<Color>(COLOR_CONST.white),
    ),
    primaryColor: COLOR_CONST.white,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: COLOR_CONST.white,
      foregroundColor: COLOR_CONST.gray500
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            )
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
            COLOR_CONST.white
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
            COLOR_CONST.gray500
        ),
        elevation: MaterialStateProperty.all<double>(8.0),
      ),
    ),
    textTheme: const TextTheme(
        headline4: TextStyle(color: COLOR_CONST.gray800,fontWeight: FontWeight.bold),
        headline5: TextStyle(color: COLOR_CONST.gray800,fontWeight: FontWeight.bold),

        subtitle1: TextStyle(color:COLOR_CONST.gray600,fontWeight: FontWeight.normal )

    ),

    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none
        ),
        filled: true,
        fillColor: COLOR_CONST.gray300.withOpacity(0.2),
    ),
    //shadowColor: COLOR_CONST.gray300.withOpacity(0.3),
);