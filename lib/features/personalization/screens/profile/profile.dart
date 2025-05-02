import 'package:ecommerce_project/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_project/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_project/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Profile')),

      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(image: TImages.user, width: 80, height: 80,),
                    TextButton(onPressed: () {}, child: Text('Change Profile Picture')),
                  ],
                ),
              ),

              // details
              SizedBox(height: TSizes.spaceBtwItems / 2,),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),

              // heading profile info
              TSectionHeading(title: 'Profile Information', showActionButton: false, buttonTitle: 'View all',),
              SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: 'Name', value: 'Thenetchetra', onPressed: () {},),
              TProfileMenu(title: 'Username', value: 'Thenetchetra007', onPressed: () {},),

              SizedBox(height: TSizes.spaceBtwItems,),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),

              TSectionHeading(title: 'Personal Information', showActionButton: false, buttonTitle: 'View all',),
              SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: 'ID', value: '00077', icon: Iconsax.copy, onPressed: () {},),
              TProfileMenu(title: 'Email', value: 'thenetchetra007@gmail.com', onPressed: () {},),
              TProfileMenu(title: 'Phone Number', value: '0123456789', onPressed: () {},),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {},),
              TProfileMenu(title: 'Date of Birth', value: '10 oct 2010', onPressed: () {},),

              Divider(),
              SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}


