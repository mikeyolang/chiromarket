import 'package:chiromarket/utils/constants/image_strings.dart';
import 'package:chiromarket/utils/constants/sizes.dart';
import 'package:chiromarket/utils/constants/text_strings.dart';
import 'package:chiromarket/utils/device/device_utility.dart';
import 'package:chiromarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horrizontal Scrollable pages
          PageView(
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
          OnboardingSkip(),
        ],
      ),
    );
  }
}

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppbarHeight(),
      right: CustomSizes.defaultSpace,
      child: TextButton(
        onPressed: () {},
        child: const Text("Skip"),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CustomSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            height: AppHelperFunctions.screenHeight() * 0.6,
            width: AppHelperFunctions.screenWidth() * 0.8,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
