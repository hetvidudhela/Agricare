import 'package:demo/common/widgets/icons/t_circular_icon.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSize.defaultSpace, vertical: TSize.defaultSpace / 2),
      decoration: const BoxDecoration(
          color: TColors.light,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(TSize.cardRadiusLg),
            topRight: Radius.circular(TSize.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCircularicon(
                icon: Iconsax.minus,
                backgroundColor: TColors.darkGray,
                width: 40,
                height: 40,
                color: TColors.textWhite,
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
                backgroundColor: TColors.primary,
                width: 40,
                height: 40,
                color: TColors.textWhite,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(TSize.md),
                  backgroundColor: TColors.primary,
                  side: const BorderSide(color: Colors.blue)),
              child: const Text('Add to cart'))
        ],
      ),
    );
  }
}
