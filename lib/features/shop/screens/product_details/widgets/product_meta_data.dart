import 'package:ecommerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_project/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_project/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_project/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_project/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:ecommerce_project/utils/constants/enums.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/size.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // price and sale price
        Row(
          children: [
            TRoundedContainer(
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
            SizedBox(width: TSizes.spaceBtwItems,),
            // price
            Text(
              '\$250',
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(width: TSizes.spaceBtwItems,),
            TProductPriceText(price: '175', isLarge: true,),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5,),
        
        // title
        TProductTitleText(title: 'Addidas Samba Brazil 2014'),
        SizedBox(height: TSizes.spaceBtwItems / 1.5,),

        Row(
          children: [
            TProductTitleText(title: 'Status:'),
            SizedBox(width: TSizes.spaceBtwItems / 2,),
            Text('In Stock', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5,),

        // brand
        Row(
          children: [
            TCircularImage(image: TImages.shoeIcon, width: 32, height: 32),
            SizedBox(width: TSizes.spaceBtwItems / 2),
            TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems,)
      ],
    );
  }
}
