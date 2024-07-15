import 'package:chiromarket/common/widgets/success_screen.dart';
import 'package:chiromarket/features/authentication/screens/login/login.dart';
import 'package:chiromarket/utils/constants/image_strings.dart';
import 'package:chiromarket/utils/constants/sizes.dart';
import 'package:chiromarket/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(AppImages.onboardingImageOne),
                width: AppHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwnSections,
              ),
              Text(
                "Verify your Email Address".capitalize!,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwnItems,
              ),
              Text(
                "support@mail.com".capitalize!,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwnItems,
              ),
              Text(
                "A Verification mail has been sent to you email. Kindly click on it to verify",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwnItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const SuccessScreen()),
                  child: const Text("Continue"),
                ),
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwnItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Resend Email"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
