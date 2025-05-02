import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/size.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder:
          (_, __) => SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 4,
      itemBuilder:
          (_, __) => Column(
        children: [
          TCartItem(),
          if(showAddRemoveButtons) SizedBox(height: TSizes.spaceBtwItems),

          if(showAddRemoveButtons)
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // add remove button
              Row(
                children: [
                  SizedBox(width: 70,),
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),
              TProductPriceText(price: '199.99'),
            ],
          ),
        ],
      ),
    );
  }
}
