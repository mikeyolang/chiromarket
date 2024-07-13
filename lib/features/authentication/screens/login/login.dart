import 'package:chiromarket/common/styles/spacing_styles.dart';
import 'package:chiromarket/utils/constants/colors.dart';
import 'package:chiromarket/utils/constants/image_strings.dart';
import 'package:chiromarket/utils/constants/sizes.dart';
import 'package:chiromarket/utils/constants/text_strings.dart';
import 'package:chiromarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CustomSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Creating the Logo and Tittle
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    height: 150,
                    image: AssetImage(AppImages.darkAppLogo),
                  ),
                  Text(
                    AppTextStrings.loginTittle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: CustomSizes.sm,
                  ),
                  Text(
                    AppTextStrings.loginSubtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              // The Login textfields
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: CustomSizes.spaceBtwnSections,
                  ),
                  child: Column(
                    children: [
                      buildCustomTexFields("Enter Email", Iconsax.direct_right),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnInputFields,
                      ),
                      buildCustomTexFields("Enter Password", Iconsax.eye_slash),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnInputFields / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              const Text("Remember me"),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Forgot Password"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnInputFields / 2,
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnSections,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Sign In"),
                        ),
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnSections,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text("Create Account"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // A Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark
                          ? CustomColors.darkBackground
                          : CustomColors.darkBackground,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    "Or sign in with".capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark
                          ? CustomColors.darkBackground
                          : CustomColors.darkBackground,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: CustomSizes.spaceBtwnSections,
              ),
              // Creating the Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        height: CustomSizes.iconMd,
                        width: CustomSizes.iconMd,
                        image: AssetImage(AppImages.googleLogo),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: CustomSizes.spaceBtwnSections,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        height: CustomSizes.iconMd,
                        width: CustomSizes.iconMd,
                        image: AssetImage(AppImages.googleLogo),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCustomTexFields(String labelText, IconData icon) {
  return TextFormField(
    decoration: InputDecoration(
      prefixIcon: Icon(icon),
      labelText: labelText,
    ),
  );
}
