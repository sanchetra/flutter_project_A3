import 'package:ecommerce_project/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_project/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce_project/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce_project/features/shop/screens/product_details/widgets/product_detail_image.dart';
import 'package:ecommerce_project/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_project/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:readmore/readmore.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../product_reviews/product_reviews.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  product image slider
            TProductImageSlider(),

            // Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [

                  // rating and share button
                  TRatingAndShare(),

                  // price, title, stack and brand
                  TProductMetaData(),

                  // attributes
                  TProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwItems,),

                  // checkout button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(
                    backgroundColor: TColors.primary,
                    foregroundColor: Colors.white,
                    side: BorderSide(color: TColors.primary),
                  ) ,child: Text('Checkout')),),
                  SizedBox(height: TSizes.spaceBtwItems),

                  // description
                  TSectionHeading(title: 'Description', showActionButton: false, buttonTitle: '',),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  ReadMoreText(
                    'This is a Product description for Blue  Sleeve less vest. There are more things that can be added and the product is too good for me I cannot afford more that that.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // reviews
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems / 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: 'Reviews (199)', showActionButton: false, buttonTitle: 'View all',),
                      IconButton(onPressed: () => Get.to(() => ProductReviewsScreen()), icon: Icon(Iconsax.arrow_right_2, size: 18,))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


