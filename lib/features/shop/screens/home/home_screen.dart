import 'package:chiromarket/common/widgets/appbar.dart';
import 'package:chiromarket/common/widgets/circular_container.dart';
import 'package:chiromarket/common/widgets/curved_edges.dart';
import 'package:chiromarket/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/curved_widget.dart';

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
                                )
                              ],
                            ),
                          ],
                        )
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
