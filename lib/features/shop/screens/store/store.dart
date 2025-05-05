import 'package:ecommerce_project/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_project/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce_project/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_project/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_project/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_project/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_project/features/shop/screens/brand/all_brands.dart';
import 'package:ecommerce_project/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../common/widgets/brands/t_brand_card.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../all_products/all_products.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [TCardCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor:
                    THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      // search bar
                      SizedBox(height: TSizes.spaceBtwItems),
                      TSearchContainer(
                        text: 'Search in store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: TSizes.spaceBtwSections),

                      // feature brand
                      TSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () => (Get.to(() => AllBrandsScreen())), buttonTitle: 'View all',
                      ),
                      SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return TBrandCard(onTap: () {}, showBorder: true,);
                        },
                      ),
                    ],
                  ),
                ),

                // tabs
                bottom: TTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Casual')),
                    Tab(child: Text('Formal')),
                    Tab(child: Text('Boots')),
                    Tab(child: Text('Women')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}




