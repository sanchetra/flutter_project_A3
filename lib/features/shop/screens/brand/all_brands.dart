import 'package:ecommerce_project/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_project/common/widgets/brands/t_brand_card.dart';
import 'package:ecommerce_project/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_project/common/widgets/products/sortable/sortable_products.dart';
import 'package:ecommerce_project/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_project/features/shop/screens/brand/brand_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/size.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // heading
              TSectionHeading(
                title: 'Brands',
                buttonTitle: 'View all',
                showActionButton: false,
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              // brand
              TGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder:
                    (context, index) => TBrandCard(
                      showBorder: true,
                      onTap: () => Get.to(() => BrandProducts()),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
