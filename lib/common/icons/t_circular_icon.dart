import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/size.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:
            backgroundColor != null
                ? backgroundColor!
                : THelperFunctions.isDarkMode(context)
                ? TColors.black.withValues(alpha: .9)
                : TColors.white.withValues(alpha: 0.9),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon, color: color, size: size)),
    );
  }
}
