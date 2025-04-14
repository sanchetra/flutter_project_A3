import 'package:ecommerce_project/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerce_project/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommerce_project/utils/theme/custom_theme/chip_theme.dart';
import 'package:ecommerce_project/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce_project/utils/theme/custom_theme/outlined_button.dart';
import 'package:ecommerce_project/utils/theme/custom_theme/text_field_theme.dart';
import 'package:flutter/material.dart';
import 'custom_theme/appbar_theme.dart';
import 'custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextThemes.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TELevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonThese,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextThemes.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TELevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonThese,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );

}
