import 'package:chiromarket/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:chiromarket/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

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
        onPressed: () =>OnboardingController.instance.skipPage(),
        child: const Text("Skip"),
      ),
    );
  }
}