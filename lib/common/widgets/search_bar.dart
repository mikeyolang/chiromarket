import 'package:chiromarket/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/device/device_utility.dart';
import '../../utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackGround = true,
    this.showBorder = true,
  });
  final String text;
  final IconData? icon;
  final bool showBackGround, showBorder;

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
      child: Container(
        width: AppDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(CustomSizes.md),
        decoration: BoxDecoration(
          color: showBackGround
              ? darkMode
                  ? Colors.black
                  : Colors.white
              : Colors.transparent,
          borderRadius: BorderRadius.circular(
            CustomSizes.cardRadiusLg,
          ),
          border: showBorder ? Border.all(color: Colors.grey) : null,
        ),
        child: Row(
          children: [
            const Icon(
              Iconsax.search_normal,
              color: Colors.grey,
            ),
            const SizedBox(
              width: CustomSizes.spaceBtwnItems,
            ),
            Text(
              "Search products",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
