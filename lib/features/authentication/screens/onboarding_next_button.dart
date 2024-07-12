import 'package:chiromarket/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:chiromarket/utils/constants/colors.dart';
import 'package:chiromarket/utils/device/device_utility.dart';
import 'package:chiromarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
      right: CustomSizes.defaultSpace,
      bottom: AppDeviceUtils.getBottonNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () =>OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? CustomColors.primaryColor : Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
