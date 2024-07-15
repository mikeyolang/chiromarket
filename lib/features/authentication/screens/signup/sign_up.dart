import 'package:chiromarket/common/styles/spacing_styles.dart';
import 'package:chiromarket/features/authentication/screens/signup/sign_up.dart';
import 'package:chiromarket/utils/constants/colors.dart';
import 'package:chiromarket/utils/constants/image_strings.dart';
import 'package:chiromarket/utils/constants/sizes.dart';
import 'package:chiromarket/utils/constants/text_strings.dart';
import 'package:chiromarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
              ),
              const SizedBox(
                width: CustomSizes.spaceBtwnInputFields,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's get you started".capitalize!,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: CustomSizes.sm,
                  ),
                  Text(
                    "Create your account to get started",
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
                      Row(
                        children: [
                          Expanded(
                            child: buildCustomSignUpTexFields(
                              "First name",
                              Iconsax.user,
                            ),
                          ),
                          const SizedBox(
                            width: CustomSizes.spaceBtwnInputFields,
                          ),
                          Expanded(
                            child: buildCustomSignUpTexFields(
                              "Last name",
                              Iconsax.user,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnInputFields / 2,
                      ),
                      buildCustomSignUpTexFields(
                        "Username",
                        Iconsax.user_add,
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnInputFields / 2,
                      ),
                      buildCustomSignUpTexFields(
                        "Email",
                        Icons.email,
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnInputFields / 2,
                      ),
                      buildCustomSignUpTexFields(
                        "Phone number",
                        Iconsax.call,
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnInputFields / 2,
                      ),
                      buildCustomPasswordTexFields(
                        "Password",
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnInputFields / 2,
                      ),
                      buildCustomPasswordTexFields(
                        "Confirm password",
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnInputFields / 2,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                          Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                text: "I agree to ",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: "Privacy policies ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color: dark
                                          ? CustomColors.whiteText
                                          : CustomColors.primaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? CustomColors.whiteText
                                          : CustomColors.primaryColor,
                                    ),
                              ),
                              TextSpan(
                                text: "and ",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: "Terms of use ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color: dark
                                          ? CustomColors.whiteText
                                          : CustomColors.primaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? CustomColors.whiteText
                                          : CustomColors.primaryColor,
                                    ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnSections,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Create Account"),
                        ),
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwnSections + 5,
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
                    "Or sign Up with".capitalize!,
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
                        image: AssetImage(AppImages.facebookLogo),
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
                        image: AssetImage(AppImages.instagramLogo),
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

Widget buildCustomSignUpTexFields(String labelText, IconData icon) {
  return TextFormField(
    expands: false,
    decoration: InputDecoration(
      prefixIcon: Icon(icon),
      labelText: labelText,
    ),
  );
}

Widget buildCustomPasswordTexFields(String labelText) {
  return TextFormField(
    decoration: InputDecoration(
      labelText: labelText,
      suffixIcon: IconButton(
        icon: const Icon(Iconsax.eye_slash),
        onPressed: () {},
      ),
    ),
  );
}
