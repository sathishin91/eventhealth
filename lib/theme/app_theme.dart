import 'package:flutter/material.dart';

import '../constants/theme_constants.dart';

class AppTheme {
  AppTheme._();

  static const String fontFamily = "Poppins";

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: ThemeConstants.primaryColor,
        dividerColor: ThemeConstants.dividerColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
            backgroundColor: ThemeConstants.white,
            elevation: 0,
            iconTheme: const IconThemeData(color: ThemeConstants.black),
            titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                )),
        fontFamily: fontFamily,
        inputDecorationTheme: Theme.of(context).inputDecorationTheme.copyWith(
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: ThemeConstants.black),
              ),
              errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: ThemeConstants.red),
              ),
              focusColor: ThemeConstants.black,
            ),
        textTheme: ThemeConstants.appTextTheme(),
        tabBarTheme: TabBarTheme.of(context).copyWith(
          labelStyle: ThemeConstants.tabLabelStyle,
          labelColor: ThemeConstants.black,
          unselectedLabelStyle: ThemeConstants.appFont,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: ThemeConstants.black,
          selectionHandleColor: ThemeConstants.black,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData.dark(
        useMaterial3: true,
      );
}
