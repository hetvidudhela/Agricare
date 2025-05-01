import 'package:demo/common/widgets/icons/t_circular_icon.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductQuantityWithAddRemove extends StatelessWidget {
  const TProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TCircularicon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSize.md,
          color: TColors.black,
          backgroundColor: TColors.light,
        ),
        const SizedBox(
          width: TSize.spaceBtwItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: TSize.spaceBtwItems,
        ),
        const TCircularicon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSize.md,
          color: TColors.textWhite,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
