import 'package:ecommerce_project/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_project/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:ecommerce_project/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerce_project/features/shop/screens/product_reviews/widgets/rating_star.dart';
import 'package:ecommerce_project/features/shop/screens/product_reviews/widgets/use_review_card.dart';
import 'package:ecommerce_project/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: TAppBar(title: Text('Reviews & Rating'), showBackArrow: true),

      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rating and reviews are verified and are from people who use the same type of devices that you use.',
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              // overall product ratings
              TOverallProductRating(),

              TRatingBarIndicator(
                rating: 4.5,
                unratedColor: TColors.grey,
                itemSize: 20,
                itemBuilder:
                    (_, __) =>
                        const Icon(Iconsax.star_1, color: TColors.primary),
              ),
              SizedBox(height: TSizes.spaceBtwSections,),

              // user reviews list
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),

            ],
          ),
        ),
      ),
    );
  }
}
