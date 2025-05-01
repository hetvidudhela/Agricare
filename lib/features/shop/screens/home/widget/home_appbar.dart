import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:demo/features/personalizaion/controller/user_controller.dart';
import 'package:demo/utils/constans/shimmer.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextStrings.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: const Color.fromARGB(255, 254, 249, 249)),
          ),
          Obx(() {
            if (controller.profileLoading.value) {
              //diaplay shimmer loader
              return const TShimmerEffect(width: 80, height: 15);
            } else {
              return Text(
                controller.user.value.fullName,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: Colors.white),
              );
            }
          })
        ],
      ),
      actions: [
        TCartCountericon(
          onPressed: () {},
          iconColor: Colors.white,
        )
      ],
    );
  }
}
