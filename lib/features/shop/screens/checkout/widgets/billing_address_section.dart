import 'package:ecommerce_project/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/size.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {},),
        Text('Hun Tiandi', style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(height: TSizes.spaceBtwItems/2,),

        Row(
          children: [
            Icon(Icons.phone, color: Colors.grey, size: 16,),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text('012 123 123', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.location_on_outlined, color: Colors.grey, size: 16,),
            SizedBox(width: TSizes.spaceBtwItems,),
            Expanded(child: Text('st271, BKK, Phnom Penh, Cambodia', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,))
          ],
        )
      ],
    );
  }
}
