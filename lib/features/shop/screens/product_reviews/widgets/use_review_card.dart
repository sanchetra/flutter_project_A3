import 'package:ecommerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_project/features/shop/screens/product_reviews/widgets/rating_star.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/size.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text(
                  'Khvicha Kvaratskhelia',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems),

        // reviews
        Row(
          children: [
            TRatingBarIndicator(
              rating: 4,
              itemSize: 20,
              unratedColor: TColors.grey,
              itemBuilder:
                  (_, __) => const Icon(Iconsax.star_1, color: TColors.primary),
            ),
            SizedBox(width: TSizes.spaceBtwSections,),
            Text('01 Nov 2025', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        ReadMoreText(
          'The user interface of the app is quite good, I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        SizedBox(height: TSizes.spaceBtwItems,),

        // Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Padding(padding: EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('SC Store', style: Theme.of(context).textTheme.bodyLarge,),
                  Text('01 Jan 2025', style: Theme.of(context).textTheme.bodyMedium,)
                ],
              ),
              SizedBox(height: TSizes.spaceBtwItems,),
              ReadMoreText(
                'The user interface of the app is quite good, I was able to navigate and make purchases seamlessly. Great job!',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: 'show less',
                trimCollapsedText: 'show more',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
              ),
            ],
          ),),
        ),
        SizedBox(height: TSizes.spaceBtwSections,),

      ],
    );
  }
}
