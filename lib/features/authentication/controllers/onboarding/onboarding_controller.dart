import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  // Declaring the Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  // Updating the current index When the page is scrolled
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // jump to a specific selected dot page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // update current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      double page = currentPageIndex.value + 1;
      pageController.jumpTo(page);
    }
  }

  // Update current index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
