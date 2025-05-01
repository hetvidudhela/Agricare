import 'package:demo/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:demo/common/widgets/images/t_circular_image.dart';
import 'package:demo/common/widgets/texts/product_price_text.dart';
import 'package:demo/common/widgets/texts/product_title_text.dart';
import 'package:demo/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/enums.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price
        Row(
          children: [
            //sale tag

            TRoundedContainer(
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
            const SizedBox(width: TSize.spaceBtwItems),
            //price tag

            const TProductPriceText(
              price: '150/1kg',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems / 1.5),

        //title
        const TProductTitleText(title: 'Coffee Seeds Of Ankur'),
        const SizedBox(height: TSize.spaceBtwItems / 1.5),

        //stock status

        const Row(
          children: [
            TProductTitleText(title: 'Status'),
            SizedBox(width: TSize.spaceBtwItems),
            Text(
              'Available',
              style: TextStyle(color: TColors.primary, fontSize: 13),
            ),
          ],
        ),

        const SizedBox(height: TSize.spaceBtwItems / 1.5),

        // brand
        const Row(
          children: [
            TCircularImage(
              image: ImageString.brand1,
              width: 35,
              height: 35,
            ),
            TBrandTitleWithVerifiedIcon(
              title: 'Ankur',
              brandTextSize: TextSizes.medium,
            ),
            SizedBox(
              height: TSize.xl,
            )
          ],
        )
      ],
    );
  }
}
