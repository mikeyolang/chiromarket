import 'package:chiromarket/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              Text(
                "Create an Account with us today",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwnSections,
              ),
              // Registration fields
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "First name",
                            prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                        const SizedBox(
                          width: CustomSizes.spaceBtwnInputFields,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Last name",
                            prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: CustomSizes.spaceBtwnInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Iconsax.user5),
                      ),
                    ),
                    const SizedBox(
                      height: CustomSizes.spaceBtwnInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Iconsax.direct_inbox),
                      ),
                    ),
                    const SizedBox(
                      height: CustomSizes.spaceBtwnInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Phone number",
                        prefixIcon: Icon(Iconsax.call3),
                      ),
                    ),
                    const SizedBox(
                      height: CustomSizes.spaceBtwnInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash2),
                      ),
                    ),
                    const SizedBox(
                      height: CustomSizes.spaceBtwnInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: "Confirm password",
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash2),
                      ),
                    ),
                    const SizedBox(
                      height: CustomSizes.spaceBtwnInputFields,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
