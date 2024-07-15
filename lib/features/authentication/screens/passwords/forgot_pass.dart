import 'package:chiromarket/features/authentication/screens/passwords/reset_pass.dart';
import 'package:chiromarket/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Password",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwnItems,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet nisi at elit venenatis fringilla. Cras ut semper.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwnSections,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter your email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwnSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPasswordScreen()),
                  child: const Text("Submit"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
