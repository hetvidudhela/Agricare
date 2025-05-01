import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TRatingAndSharing extends StatelessWidget {
  const TRatingAndSharing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //rating
        Row(
          children: [
            Icon(
              Iconsax.star5,
              color: TColors.secondary.withOpacity(0.8),
              size: 25,
            ),
            const SizedBox(
              width: TSize.spaceBtwItems / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '4.3', style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: (' (40) '))
            ]))
          ],
        ),

        //share btn

        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              size: 22,
            ))
      ],
    );
  }
}
