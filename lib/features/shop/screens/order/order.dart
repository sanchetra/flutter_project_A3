import 'package:ecommerce_project/features/shop/screens/order/widgets/order_list.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/size.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(title: Text('My Order', style: Theme.of(context).textTheme.headlineSmall),),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        // orders
        child: TOrderListItems(),
      ),
    );
  }
}
