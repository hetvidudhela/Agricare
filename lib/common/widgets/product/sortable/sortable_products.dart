import 'package:demo/common/widgets/layout/grid_layout.dart';
import 'package:demo/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:demo/features/shop/models/product_model.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Dropdown
        DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            onChanged: (value) {},
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((option) =>
                    DropdownMenuItem(value: option, child: Text(option)))
                .toList()),
        const SizedBox(
          height: TSize.spaceBtwSections,
        ),
        //Products
        TGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => TProductCardVertical(
                  product: ProductModel.empty(),
                ))
      ],
    );
  }
}
