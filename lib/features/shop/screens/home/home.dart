import 'package:ecommerce_project/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_project/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_project/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_card/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // appbar
                  THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Search Bar
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white, buttonTitle: 'View all',
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        // categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,)
                ],
              ),
            ),

            // body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [

                  // promo slider
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  // heading
                  TSectionHeading(title: 'Popular Product', onPressed: () {}, buttonTitle: 'View all',),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  // popular product
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical(),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


