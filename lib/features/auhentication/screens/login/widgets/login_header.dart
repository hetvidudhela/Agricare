import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(
          height: 150,
          image: AssetImage(ImageString.img1),
        ),
        Text(
          "Hello Producers",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSize.sm),
        Text(
          "Together, Let's cultivate the future",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
