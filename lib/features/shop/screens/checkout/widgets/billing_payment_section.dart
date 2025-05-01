import 'package:demo/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 2,
        ),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.textWhite,
              padding: const EdgeInsets.all(TSize.sm),
              child: const Image(
                image: AssetImage(ImageString.logo1), // gpay
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: TSize.spaceBtwItems / 2,
            ),
            Text(
              'GooglePay',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
