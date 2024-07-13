import 'package:chiromarket/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:chiromarket/features/authentication/screens/onboarding/onboarding_dot_navigation.dart';
import 'package:chiromarket/features/authentication/screens/onboarding/onboarding_next_button.dart';
import 'package:chiromarket/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:chiromarket/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

import 'package:chiromarket/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horrizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: AppImages.onboardingImageOne,
                title: AppTextStrings.onboardingTitleOne,
                subtitle: AppTextStrings.onboardingSubTitleOne,
              ),
              OnboardingPage(
                  image: AppImages.onboardingImageTwo,
                  title: AppTextStrings.onboardingTitleTwo,
                  subtitle: AppTextStrings.onboardingSubTitleTwo),
              OnboardingPage(
                image: AppImages.onboardingImageThree,
                title: AppTextStrings.onboardingTitleThree,
                subtitle: AppTextStrings.onboardingSubTitleThree,
              ),
            ],
          ),
          // This is the skip button
          const OnboardingSkip(),

          // Dot Smooth Navigation
          const OnboardingDotNavigation(),

          // Creating a Circular Button
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
