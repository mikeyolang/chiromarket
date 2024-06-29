import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  // Declaring the Variables

  // Updating the current index When the page is scrolled
  void updatePageController(index) {}

  // jump to a specific selected dot page
  void dotNavigationClick(index) {}

  // update current index and jump to next page
  void nextPage() {}

  // Update current index and jump to last page
  void skipPage(){}
}
