import 'package:demo/common/widgets/brand/brand_card.dart';
import 'package:demo/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGray,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSize.md),
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      child: Column(
        children: [
          //Brand With Product Count
          const TBrandCard(showBorder: false),
          const SizedBox(
            height: TSize.spaceBtwItems,
          ),

          //Brand Top 3 Product Image
          Row(
              children: images
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList())
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
      child: TRoundedContainer(
    height: 100,
    padding: const EdgeInsets.all(TSize.md),
    margin: const EdgeInsets.only(right: TSize.sm),
    backgroundColor:
        THelperFunctions.isDarkMode(context) ? TColors.darkGray : TColors.light,
    child: Image(
      fit: BoxFit.contain,
      image: AssetImage(image),
    ),
  ));
}
