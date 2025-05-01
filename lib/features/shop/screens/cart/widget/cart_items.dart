import 'package:demo/common/widgets/product/cart/add_remove_button.dart';
import 'package:demo/common/widgets/product/cart/cart_item.dart';
import 'package:demo/common/widgets/texts/product_price_text.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSize.spaceBtwSections,
      ),
      itemBuilder: (_, index) => Column(
        children: [
          //Cart Item
          const TCartItem(),
          if (showAddRemoveButtons) const SizedBox(height: TSize.spaceBtwItems),

          //Add Remove Button Row with total Price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //Extra Space
                    SizedBox(width: 70),
                    //Add Remove Buttons
                    TProductQuantityWithAddRemove(),
                  ],
                ),

                //Product Total Price
                TProductPriceText(price: '150'),
              ],
            ),
        ],
      ),
    );
  }
}
