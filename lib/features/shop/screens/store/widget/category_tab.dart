import 'package:demo/common/widgets/brand/brand_show_case.dart';
import 'package:demo/common/widgets/layout/grid_layout.dart';
import 'package:demo/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/features/shop/models/categories_model.dart';
import 'package:demo/features/shop/models/product_model.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TCstegoryTab extends StatelessWidget {
  const TCstegoryTab({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              children: [
                // brands
                const TBrandShowcase(
                  images: [
                    ImageString.productImg2,
                    ImageString.productImg2,
                    ImageString.productImg2
                  ],
                ),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),

                //products

                TSectionHeading(
                    title: 'you can purchase',
                    showActionButton: true,
                    onPressed: () {}),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),

                TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => TProductCardVertical(
                          product: ProductModel.empty(),
                        )),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),
              ],
            ),
          )
        ]);
  }
}
