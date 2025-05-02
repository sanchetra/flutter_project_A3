import 'package:ecommerce_project/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Add new Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),
                ),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number'),
                ),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Street'),
                      ),
                    ),
                    SizedBox(width: TSizes.spaceBtwInputFields,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Postal Code'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'City'),
                      ),
                    ),
                    SizedBox(width: TSizes.spaceBtwInputFields,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'State'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number'),
                ),
                SizedBox(height: TSizes.defaultSpace,),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: TColors.primary,side: BorderSide(color: TColors.primary, width: 2),), child: Text('Save')),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
