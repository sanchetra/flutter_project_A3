import 'package:ecommerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_project/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_project/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_project/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        // selected attribute pricing and description
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              // title. price and stock status
              Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace / 2),
                child: Row(
                  children: [
                    TSectionHeading(
                      title: 'Variation',
                      showActionButton: false, buttonTitle: 'View all',
                    ),
                    SizedBox(width: TSizes.spaceBtwItems),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            TProductTitleText(title: 'Price', smallSize: true),

                            // actual price
                            Text(
                              '\$25',
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall!.apply(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            SizedBox(width: TSizes.spaceBtwItems),

                            // sale price
                            TProductPriceText(price: '20'),
                          ],
                        ),

                        // stock
                        Row(
                          children: [
                            TProductTitleText(
                              title: 'Stock : ',
                              smallSize: true,
                            ),
                            Text(
                              'In Stock',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // variation description
              Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace / 2),
                child: TProductTitleText(
                  title:
                      'This is the description of the product and it can go upto max 4 lines',
                  smallSize: true,
                  maxLines: 4,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems / 2),

        // attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors', buttonTitle: '',),
            Wrap(
              spacing: 5,
              children: [
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Size', buttonTitle: '',),
            Wrap(
              spacing: 5,
              children: [
                TChoiceChip(text: 'EU 38', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'EU 39', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 40', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 41', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 42', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 43', selected: false, onSelected: (value){},),
              ],
            )
          ],
        ),
      ],
    );
  }
}


