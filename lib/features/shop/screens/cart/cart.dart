import 'package:demo/common/widgets/appbar/appbar.dart';

import 'package:demo/features/shop/screens/cart/widget/cart_items.dart';
import 'package:demo/features/shop/screens/checkout/checkout.dart';
import 'package:demo/utils/constans/colors.dart';

import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.all(TSize.defaultSpace), child: TCartItems()),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          style: ElevatedButton.styleFrom(
              backgroundColor: TColors.primary // Set the background color here
              ),
          child: const Text('Checkout ₹150'),
        ),
      ),
    );
  }
}
