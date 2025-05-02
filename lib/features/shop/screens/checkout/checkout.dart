import 'package:ecommerce_project/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_project/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce_project/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce_project/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce_project/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce_project/navigation_menu.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';
import '../cart/widgets/cart_items.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Item in cart
              TCartItems(showAddRemoveButtons: false),
              SizedBox(height: TSizes.spaceBtwItems),

              // coupon textField
              TCouponCode(),
              SizedBox(height: TSizes.spaceBtwSections),

              // billing section
              TRoundedContainer(
                padding: EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    // prices
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // payment methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // address
                    TBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed:
              () => Get.to(
                () => SuccessScreen(
                  image: TImages.successfull_payment,
                  title: 'Payment Success',
                  subTitles: 'Your item will be shipped soon',
                  onPressed: () => Get.offAll(() => NavigationMenu()),
                ),
              ),
          style: ElevatedButton.styleFrom(
            backgroundColor: TColors.primary,
            side: BorderSide(color: TColors.primary),
          ),
          child: Text('Checkout \$1999.99'),
        ),
      ),
    );
  }
}
