import 'package:ecommerce_project/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_project/common/widgets/login_signup/social_button.dart';
import 'package:ecommerce_project/features/authentication/screens/login/widget/login_form.dart';
import 'package:ecommerce_project/features/authentication/screens/login/widget/login_header.dart';
import 'package:ecommerce_project/utils/constants/image_strings.dart';
import 'package:ecommerce_project/utils/constants/text_strings.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../../common/styles/spacing_styles.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo title and sub
              TLoginHeader(),

              // form
              TLoginForm(),

              // divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // footer
              TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}








