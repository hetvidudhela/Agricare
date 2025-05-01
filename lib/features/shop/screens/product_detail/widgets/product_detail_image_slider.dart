import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/icons/t_circular_icon.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TcurvedEdgeWidget(
        child: Container(
      color: TColors.light,
      child: const Stack(
        children: [
          // main image
          SizedBox(
            width: 400,
            child: Padding(
              padding: EdgeInsets.all(2 * 1.5),
              child: Center(
                child: Image(
                  image: AssetImage(ImageString.productImg2),
                ),
              ),
            ),
          ),

          // app bar icons
          TAppBar(
            showBackArrow: true,
            actions: [
              TCircularicon(
                icon: Iconsax.heart5,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    ));
  }
}
