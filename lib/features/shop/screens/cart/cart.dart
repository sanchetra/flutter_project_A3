
import 'package:ecommerce_project/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_project/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_project/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce_project/features/shop/screens/checkout/checkout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/constants/colors.dart';

import '../../../../utils/constants/size.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => CheckoutScreen()), style: ElevatedButton.styleFrom(backgroundColor: TColors.primary, side: BorderSide(color: TColors.primary)) ,child: Text('Checkout \$1999.99')),
      ),
    );
  }
}


