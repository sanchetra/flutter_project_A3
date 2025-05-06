import 'package:ecommerce_project/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_project/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:ecommerce_project/utils/constants/colors.dart';
import 'package:ecommerce_project/utils/constants/size.dart';
import 'package:ecommerce_project/utils/constants/text_strings.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart'; // Your HTTP helper class

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../utils/http/http_client.dart';

class TSignupForm extends StatefulWidget {
  const TSignupForm({super.key});

  @override
  State<TSignupForm> createState() => _TSignupFormState();
}

class _TSignupFormState extends State<TSignupForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool _isLoading = false;

  Future<void> _register() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      final response = await THttpHelper.post('auth/register', {
        'name': _username.text,
        'email': _email.text,
        'password': _password.text,
      });

      // You can auto-login or show verify screen
      // await THttpHelper.saveToken(response['token']); // if JWT returned

      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      Get.snackbar('Error', e.toString(),
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Username
          TextFormField(
            controller: _username,
            validator: (value) => value!.isEmpty ? 'Username is required' : null,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: TTexts.username,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            controller: _email,
            validator: (value) => value!.isEmpty ? 'Email is required' : null,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            controller: _password,
            obscureText: true,
            validator: (value) => value!.length < 6 ? 'Password too short' : null,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Terms checkbox
          const TTermsAndConditionsCheckbox(),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _isLoading ? null : _register,
              style: ElevatedButton.styleFrom(
                backgroundColor: TColors.primary,
                foregroundColor: TColors.white,
                side: BorderSide(color: TColors.primary),
              ),
              child: _isLoading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
