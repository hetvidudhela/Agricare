import 'package:demo/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:demo/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:demo/features/shop/models/brand_model.dart';

import 'package:demo/utils/constans/enums.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';

import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_functions.dart';

import '../images/t_circular_image.dart';

/// A card widget representing a brand.
class TBrandCard extends StatelessWidget {
  /// Default constructor for the TBrandCard.
  ///
  /// Parameters:
  ///   - brand: The brand model to display.
  ///   - showBorder: A flag indicating whether to show a border around the card.
  ///   - onTap: Callback function when the card is tapped.
  const TBrandCard({
    super.key,
    this.brand,
    required this.showBorder,
    this.onTap,
  });

  final BrandModel? brand;
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final isDark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,

      /// Container Design
      child: TRoundedContainer(
        showBorder: true,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(TSize.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// -- Icon
            const Flexible(
              child: TCircularImage(
                image: ImageString.brand1,
                isNetworkImage: false,
                backgroundColor: Color.fromARGB(0, 241, 6, 6),
              ),
            ),
            const SizedBox(width: TSize.spaceBtwItems / 2),

            /// -- Texts
            // [Expanded] & Column [MainAxisSize.min] is important to keep the elements in the vertical center and also
            // to keep text inside the boundaries.
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                      title: 'Ankur', brandTextSize: TextSizes.small),
                  Text(
                    '${brand?.productsCount ?? 0} products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
