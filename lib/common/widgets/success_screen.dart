import 'package:chiromarket/common/styles/spacing_styles.dart';
import 'package:chiromarket/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CustomSpacingStyles.paddingWithAppBarHeight * 2,
          child: Center(
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
                  "Account Created Successfully".capitalize!,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: CustomSizes.spaceBtwnItems,
                ),
                
                const SizedBox(
                  height: CustomSizes.spaceBtwnItems,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet nisi at elit venenatis fringilla. Cras ut semper.",
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: CustomSizes.spaceBtwnItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: ()=>Get.to(()=> LoginScreen()),
                    child: const Text("Continue"),
                  ),
                ),
                const SizedBox(
                  height: CustomSizes.spaceBtwnItems,
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
