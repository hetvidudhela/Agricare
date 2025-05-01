import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/common/widgets/icons/t_circular_icon.dart';
import 'package:demo/common/widgets/layout/grid_layout.dart';
import 'package:demo/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:demo/features/shop/models/product_model.dart';
import 'package:demo/features/shop/screens/home/home.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Whishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularicon(
            icon: Iconsax.add,
            onPressed: () {
              Get.to(const HomeScreen());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 2,
                  itemBuilder: (_, index) => TProductCardVertical(
                        product: ProductModel.empty(),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
