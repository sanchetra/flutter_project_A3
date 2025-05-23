import 'package:ecommerce_project/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/colors.dart';

class TCardCounterIcon extends StatelessWidget {
  const TCardCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => CartScreen()),
          icon: Icon(Iconsax.shopping_bag_copy, color: iconColor),
        ),
        Positioned(
          right: 5,
          top: 5,
          child: Container(
            alignment: Alignment.center,
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: TColors.black.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              '2',
              style: Theme.of(context).textTheme.labelMedium!.apply(
                color: TColors.white,
                fontSizeFactor: 0.8,
              ),
            ),
          ),
        ),
      ],
    );
  }
}