import 'package:ecommerce_project/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_project/common/widgets/login_signup/social_button.dart';
import 'package:ecommerce_project/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // form
              TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              
              // divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwInputFields),

              // social buttons
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}


