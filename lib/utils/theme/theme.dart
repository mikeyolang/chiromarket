import 'package:chiromarket/utils/theme/appbar_theme.dart';
import 'package:chiromarket/utils/theme/bottom_sheet_theme.dart';
import 'package:chiromarket/utils/theme/check_box_theme.dart';
import 'package:chiromarket/utils/theme/custom_elevated_button_theme.dart';
import 'package:chiromarket/utils/theme/custom_text_theme.dart';
import 'package:chiromarket/utils/theme/outline_button_theme.dart';
import 'package:chiromarket/utils/theme/text_field_theme.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  CustomTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CustomTextTheme.lightTextTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButton,
    appBarTheme: CustomAppBarTheme.lightAppbarTheme,
    checkboxTheme: CustomCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheet,
    outlinedButtonTheme: CustomOutlinedButton.lightOutlinedButton,
    inputDecorationTheme: CustomTextFieldTheme.lightInputDecorationTheme,
  );
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black87,
    textTheme: CustomTextTheme.darkTextTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButton,
    appBarTheme: CustomAppBarTheme.darkAppbarTheme,
    checkboxTheme: CustomCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheet,
    outlinedButtonTheme: CustomOutlinedButton.darkOutlinedButton,
    inputDecorationTheme: CustomTextFieldTheme.darkInputDecorationTheme,
  );
}
