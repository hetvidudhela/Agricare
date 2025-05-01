import 'package:demo/common/widgets/texts/section_heading.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'John Doe',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            Text(
              '(+91) 79 2676 1288',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            Expanded(
              child: Text(
                'Chief Justice Bungalow, Ahmedabad',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: TSize.spaceBtwItems,
        ),
      ],
    );
  }
}
