import 'package:demo/common/styles/shadows.dart';
import 'package:demo/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:demo/common/widgets/icons/t_circular_icon.dart';
import 'package:demo/common/widgets/images/t_rounded_image.dart';
import 'package:demo/common/widgets/texts/product_price_text.dart';
import 'package:demo/common/widgets/texts/product_title_text.dart';
import 'package:demo/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:demo/features/shop/controller/product_controller.dart';
import 'package:demo/features/shop/models/product_model.dart';
import 'package:demo/features/shop/screens/product_detail/product_detail.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/enums.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final controller = ProductController.instance;
    final salePercentage =
        controller.calculateSalePercentage(product.price, product.salePrice);
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailScreen(product: product)),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalproductShadow],
            borderRadius: BorderRadius.circular(TSize.productImageRadius),
            color: dark ? TColors.darkerGray : Colors.white),
        child: Column(
          children: [
            // thumbnail, whishlisht ,dis
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSize.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //thumbnail img

                  TRoundedImage(
                    imageUrl: product.thumbnail,
                    applyImageRadius: true,
                  ),
                  //sale tag

                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSize.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.9),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSize.sm, vertical: TSize.xs),
                      child: Text(
                        '$salePercentage%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  //fav icon

                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularicon(
                        icon: Icons.favorite,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),

            //detail

            Padding(
              padding: const EdgeInsets.only(
                left: TSize.sm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: product.title,
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwItems / 2,
                  ),
                  TBrandTitleWithVerifiedIcon(
                    title: product.brand!.name,
                  ),
                ],
              ),
            ),

            const Spacer(),
            // price btn

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // price
                Flexible(
                  child: Column(
                    children: [
                      if (product.productType ==
                              ProductType.single.toString() &&
                          product.salePrice > 0)
                        Padding(
                          padding: const EdgeInsets.only(left: TSize.sm),
                          child: Text(
                            product.price.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(left: TSize.sm),
                        child: TProductPriceText(
                          price: controller.getProductPrice(product),
                        ),
                      ),
                    ],
                  ),
                ),

                // add to card btn

                Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSize.cardRadiusMd),
                        bottomRight: Radius.circular(TSize.productImageRadius),
                      )),
                  child: const SizedBox(
                      width: TSize.iconLg * 1.2,
                      height: TSize.iconLg * 1.2,
                      child: Center(
                          child: Icon(
                        Iconsax.add,
                        color: TColors.textWhite,
                      ))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
