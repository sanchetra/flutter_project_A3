import 'package:ecommerce_project/common/icons/t_circular_icon.dart';
import 'package:ecommerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_project/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_project/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_project/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_project/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';

class TProductHorizontal extends StatelessWidget {
  const TProductHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.lightContainer,
      ),
      child: Row(
        children: [
          // thumbnail
          TRoundedContainer(
            height: 120,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                // thumbnail image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),

                // sale tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withValues(alpha: 0.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: TSizes.sm,
                      vertical: TSizes.xs,
                    ),
                    child: Text(
                      '25%',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: TColors.black),
                    ),
                  ),
                ),

                // favorite icon button
                Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    icon: Iconsax.heart,
                    color: TColors.error,
                  ),
                ),
              ],
            ),
          ),

          // details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(left: TSizes.sm, top: TSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                        title: 'Green Nike Jordan 1 Low 1997',
                        smallSize: true,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems / 2),
                      TBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // pricing
                      Flexible(child: TProductPriceText(price: '299.99')),

                      // add to cart
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.productImageRadius),
                            bottomRight: Radius.circular(
                              TSizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: TColors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
