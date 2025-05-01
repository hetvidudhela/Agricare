import 'package:demo/common/widgets/product/rating/rating_indicator.dart';
import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/features/shop/models/product_model.dart';
import 'package:demo/features/shop/screens/product_detail/widgets/bottom_add_to_cart_widget.dart';
import 'package:demo/features/shop/screens/product_detail/widgets/product_attributes.dart';
import 'package:demo/features/shop/screens/product_detail/widgets/product_detail_image_slider.dart';
import 'package:demo/features/shop/screens/product_detail/widgets/product_meta_deta.dart';

import 'package:demo/features/shop/screens/product_detail/widgets/rating_progress_indicator.dart';
import 'package:demo/features/shop/screens/product_detail/widgets/rating_share_widget.dart';

import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';

import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TProductImageSlider(),

            // product details

            Padding(
              padding: const EdgeInsets.only(
                  right: TSize.defaultSpace,
                  left: TSize.defaultSpace,
                  bottom: TSize.defaultSpace),
              child: Column(
                children: [
                  //rating btn
                  const TRatingAndSharing(),

                  //price title ,brand
                  const TProductMetaData(),
                  const SizedBox(
                    height: TSize.xs,
                  ),

                  // attribute.
                  const TProductAttributes(),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),

                  //checkout btn
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              TColors.primary), // Set background color to green
                        ),
                        child: const Text('Checkout'),
                      )),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),

                  //description

                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: TSize.sm,
                  ),
                  const ReadMoreText(
                    'Ankur coffee seeds provide high germination and strong disease resistance, ensuring healthy and productive coffee crops. Trusted for quality and adaptability',
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwItems,
                  ),

                  //review
                  const Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: 'Reviews(40)',
                        showActionButton: false,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          'Reviews are verified by the farmers who already purchased this product.'),

                      const SizedBox(
                        height: TSize.spaceBtwSections,
                      ),
                      // overall product rating
                      const TOverallProductRating(),
                      const TRatingBarIndicator(
                        rating: 3.6,
                      ),
                      Text(
                        '1200',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        height: TSize.spaceBtwSections,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
