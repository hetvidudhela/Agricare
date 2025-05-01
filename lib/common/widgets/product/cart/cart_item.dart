import 'package:demo/common/widgets/images/t_rounded_image.dart';
import 'package:demo/common/widgets/texts/product_title_text.dart';
import 'package:demo/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // image

        TRoundedImage(
          imageUrl: ImageString.productImg2,
          width: 70,
          height: 70,
          padding: EdgeInsets.all(TSize.sm),
          backgroundColor: TColors.light,
        ),
        SizedBox(
          width: TSize.spaceBtwItems,
        ),

        // title ,price & size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleWithVerifiedIcon(title: 'Ankur'),
              Flexible(
                child: TProductTitleText(
                  title: 'Coffee seeds',
                  maxLines: 1,
                ),
              ),
              // attributes
            ],
          ),
        )
      ],
    );
  }
}
