import 'package:chiromarket/common/widgets/appbar.dart';
import 'package:chiromarket/common/widgets/circular_container.dart';
import 'package:chiromarket/common/widgets/search_bar.dart';
import 'package:chiromarket/common/widgets/section_title.dart';
import 'package:chiromarket/common/widgets/verticalimage_and_text.dart';
import 'package:chiromarket/utils/constants/colors.dart';
import 'package:chiromarket/utils/constants/image_strings.dart';
import 'package:chiromarket/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/curved_widget.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomClipperWidget(
                child: Container(
                  color: CustomColors.primaryColor,
                  padding: const EdgeInsets.all(0),
                  child: SizedBox(
                    height: 400,
                    child: Stack(
                      children: [
                        Positioned(
                          top: -150,
                          right: -250,
                          child: CustomCircularContainer(
                            backgroundColor:
                                CustomColors.whiteText.withOpacity(0.1),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: -300,
                          child: CustomCircularContainer(
                            backgroundColor:
                                CustomColors.whiteText.withOpacity(0.1),
                          ),
                        ),
                        Column(
                          children: [
                            CustomAppBar(
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Welcome to Our shop",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .apply(color: CustomColors.whiteText),
                                  ),
                                  Text(
                                    "Michael Olang",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .apply(color: CustomColors.whiteText),
                                  ),
                                ],
                              ),
                              actions: [
                                Stack(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Iconsax.shopping_bag),
                                      color: Colors.white,
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "2",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge!
                                                .apply(
                                                    color: Colors.white,
                                                    fontSizeFactor: 0.8),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SearchContainer(
                              text: "Search products",
                            ),
                            const SizedBox(
                              height: CustomSizes.spaceBtwnSections,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: CustomSizes.defaultSpace,
                              ),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: CustomSizes.defaultSpace),
                                    child: SectionHeaderWidget(
                                      title: "Popular Categories",
                                      showActionButton: false,
                                      textColor: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: CustomSizes.spaceBtwnItems,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: CustomSizes.sm,
                                    ),
                                    child: SizedBox(
                                      height: 80,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: 6,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (_, index) {
                                          return VerticalImageAndText(
                                            image: AppImages.onboardingImageOne,
                                            title: "Shoes",
                                            onTap: () {},
                                          );
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
