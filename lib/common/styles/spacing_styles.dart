import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class CustomSpacingStyles {
  static EdgeInsetsGeometry paddingWithAppBarHeight = const EdgeInsets.only(
    top: CustomSizes.appBarHeight,
    left: CustomSizes.defaultSpace,
    bottom: CustomSizes.defaultSpace,
    right: CustomSizes.defaultSpace,
  );
}
