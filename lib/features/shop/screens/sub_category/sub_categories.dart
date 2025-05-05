import 'package:ecommerce_project/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_project/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:ecommerce_project/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Sports Shoes'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // banner
              TRoundedImage(
                imageUrl: TImages.promoBanner1,
                applyImageRadius: true,
                width: double.infinity,
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              // sub categories
              Column(
                children: [
                  // heading
                  TSectionHeading(
                    title: 'Sport Shoes',
                    onPressed: () {},
                    buttonTitle: 'View all',
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder:
                          (context, index) =>
                              SizedBox(width: TSizes.spaceBtwItems),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => TProductHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
