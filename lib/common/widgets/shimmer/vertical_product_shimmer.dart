import 'package:demo/common/widgets/layout/grid_layout.dart';
import 'package:demo/utils/constans/shimmer.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TVerticalProductShimmer extends StatelessWidget {
  const TVerticalProductShimmer({
    super.key,
    this.itemCount = 4,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return TGridLayout(
        itemCount: itemCount,
        itemBuilder: (_, __) => const SizedBox(
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image
                  TShimmerEffect(width: 180, height: 180),
                  SizedBox(
                    height: TSize.spaceBtwItems,
                  ),

                  //text
                  TShimmerEffect(width: 160, height: 15),
                  SizedBox(
                    height: TSize.spaceBtwItems / 2,
                  ),
                  TShimmerEffect(width: 110, height: 15),
                ],
              ),
            ));
  }
}
