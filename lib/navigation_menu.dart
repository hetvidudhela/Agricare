import 'package:demo/features/personalizaion/screens/settings/settings.dart';
import 'package:demo/features/shop/screens/home/home.dart';
import 'package:demo/features/shop/screens/store/store.dart';
import 'package:demo/features/shop/screens/whishlist/whishlist.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NevigationMenu extends StatelessWidget {
  const NevigationMenu({super.key});
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
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode
              ? Colors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(
                icon: Icon(Iconsax.heart_circle), label: 'Whishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'User'),
            NavigationDestination(icon: Icon(Iconsax.gemini), label: 'Ai'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    const SettingsScreen(),
    Container(
      color: Colors.purple,
    )
  ];
}
