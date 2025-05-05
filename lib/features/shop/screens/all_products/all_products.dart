import 'package:ecommerce_project/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_project/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/size.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Dropdown
              DropdownButtonFormField(
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                onChanged: (value) {},
                items:
                    [
                          'Name',
                          'Price',
                          'Lower Price',
                          'Sale',
                          'Newest',
                          'Popularity',
                    ]
                        .map((option) => DropdownMenuItem(value: option, child: Text(option)))
                        .toList(),
              ),
              SizedBox(height: TSizes.spaceBtwSections,),

              // products
              TGridLayout(itemCount: 4, itemBuilder: (_, index) => TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
