import 'package:demo/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:demo/common/widgets/icons/t_circular_icon.dart';
import 'package:demo/common/widgets/images/t_rounded_image.dart';
import 'package:demo/common/widgets/texts/product_price_text.dart';
import 'package:demo/common/widgets/texts/product_title_text.dart';
import 'package:demo/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 310, //Here 310
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSize.productImageRadius),
        color: dark ? TColors.darkGray : TColors.lightContainer,
      ),
      child: Row(
        children: [
          //Thumbnail
          TRoundedContainer(
            height: 120, //Here 120
            padding: const EdgeInsets.all(TSize.sm),
            backgroundColor: dark ? TColors.dark : TColors.grey,
            child: Stack(
              children: [
                //Thumbnail
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(
                    imageUrl: ImageString.productImg21,
                    applyImageRadius: true,
                  ),
                ),
                //Sale Tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSize.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.7),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSize.sm, vertical: TSize.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),

                //Favourite Icon Button
                const Positioned(
                    top: 0,
                    right: 0,
                    height: 40,
                    width: 40,
                    child: TCircularicon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ))
              ],
            ),
          ),

          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSize.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                        title: 'Fresh Coffee Seeds',
                        smallSize: true,
                      ),
                      SizedBox(
                        height: TSize.spaceBtwItems / 2,
                      ),
                      TBrandTitleWithVerifiedIcon(title: 'Ankur')
                    ],
                  ),
                  const Spacer(),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: TProductPriceText(price: '150')),

                      // add to cart

                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSize.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSize.productImageRadius),
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
