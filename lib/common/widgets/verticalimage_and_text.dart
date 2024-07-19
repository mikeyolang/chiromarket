import 'package:chiromarket/utils/constants/sizes.dart';
import 'package:chiromarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class VerticalImageAndText extends StatelessWidget {
  const VerticalImageAndText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Colors.white,
    this.backGround = Colors.white,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backGround;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.symmetric(
                horizontal: CustomSizes.sm,
              ),
              decoration: BoxDecoration(
                color: backGround ?? (darkMode ? Colors.black : Colors.white),
                borderRadius: BorderRadius.circular(
                  100,
                ),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: darkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: CustomSizes.spaceBtwnItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
