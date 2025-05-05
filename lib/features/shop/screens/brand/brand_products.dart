import 'package:ecommerce_project/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_project/common/widgets/brands/t_brand_card.dart';
import 'package:ecommerce_project/common/widgets/products/sortable/sortable_products.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/size.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Nike'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace), child: Column(
          children: [
            // brand detail
            TBrandCard(showBorder: true),
            SizedBox(height: TSizes.spaceBtwSections,),

            TSortableProducts(),
          ],
        ),),
      ),
    );
  }
}
