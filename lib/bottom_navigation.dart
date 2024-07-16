import 'package:chiromarket/utils/constants/colors.dart';
import 'package:chiromarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 70,
            elevation: 0,
            backgroundColor: darkMode
                ? CustomColors.darkBackground
                : CustomColors.lightBackground,
            indicatorColor: darkMode
                ? CustomColors.whiteText.withOpacity(0.1)
                : CustomColors.darkBackground.withOpacity(0.1),
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "Wishlist"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
            ],
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]));
  }
}

class NavigationController extends GetxController {
  Rx<int> selectedIndex = 0.obs;
  final screens = [];
}
