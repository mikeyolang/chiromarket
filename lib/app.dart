
import 'package:chiromarket/bottom_navigation.dart';
import 'package:chiromarket/features/authentication/screens/signup/sign_up.dart';
import 'package:chiromarket/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chiro Market',
      themeMode: ThemeMode.system,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const BottomNavigationMenu(),
    );
  }
}
