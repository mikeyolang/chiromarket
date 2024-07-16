import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();
  // Basic App Colors
  static const Color primaryColor = Color(0xFF4b68ff);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color accentColor = Color(0xFFb8c7ff);

  // Text Colors
  static const Color primaryTextColor = Color(0xff3333333);
  static const Color secondaryTextColor = Color(0xFF6C7570);
  static const Color whiteText = Colors.white;
  static const Color greyText = Colors.grey;

  // Backgroud colors
  static const Color lightBackground = Colors.white;
  static const Color darkBackground = Color(0xFF272727);
  static const Color primaryBackground = Colors.white;

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = CustomColors.whiteText.withOpacity(0.1);

  // Button Colors
  static const Color primaryButtonColor = Colors.blue;
  static const Color secondaryBtnColor = Color(0xFF6C7570);
  static const Color btnDismissedClr = Color.fromARGB(255, 144, 178, 194);

  // Border Colors
  static const Color primaryBorderClr = Colors.white;
  static const Color secondaryBorderClr = Colors.white;

  // Error and Validation Colors

  static const Color errorColor = Colors.red;
  static const Color successColor = Colors.green;
  static const Color warningColor = Colors.orange;
  static const Color infoColor = Colors.blue;

  // Creating Gradient colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    colors: [
      Colors.blue,
      Colors.blue,
      Colors.blueAccent,
    ],
  );
}
