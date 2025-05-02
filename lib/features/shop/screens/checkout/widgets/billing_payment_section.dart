import 'package:ecommerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_project/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/size.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: () {},),
        SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: EdgeInsets.all(TSizes.sm),
              child: Image(image: AssetImage(TImages.abaPay), fit: BoxFit.contain),
            ),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text('ABA', style: Theme.of(context).textTheme.bodyLarge,),

          ],
        )

      ],
    );
  }
}
