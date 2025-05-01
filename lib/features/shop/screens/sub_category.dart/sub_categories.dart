import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/common/widgets/images/t_rounded_image.dart';
import 'package:demo/common/widgets/product/product_cards/product_card_horizntal.dart';

import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Seeds'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              //Banner
              const TRoundedImage(
                width: double.infinity,
                imageUrl: ImageString.banner2,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //Sub-Categories
              Column(
                children: [
                  //Heading
                  TSectionHeading(
                    title: 'Seeds',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSize.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(
                              width: TSize.spaceBtwItems,
                            ),
                        itemBuilder: (context, index) {
                          return const TProductCardHorizontal();
                        }),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
