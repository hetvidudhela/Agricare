import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:demo/common/widgets/images/t_rounded_image.dart';
import 'package:demo/features/shop/controller/home_controller.dart';
import 'package:demo/utils/constans/colors.dart';

import 'package:demo/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners.map((url) => TRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(
          height: TSize.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroudcolor: controller.carousalCurrentIndex.value == i
                        ? TColors.primary
                        : Colors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
