import 'package:ecommerce_project/features/shop/screens/home/home.dart';
import 'package:ecommerce_project/utils/constants/colors.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode ? TColors.white. withValues(alpha: 0.1) : TColors.black.withValues(alpha: 0.1),
          destinations: [
            const NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            const NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            const NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'Wishlist',
            ),
            const NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), Container(color: Colors.purple,), Container(color: Colors.orange), Container(color: Colors.blue,)];
}
