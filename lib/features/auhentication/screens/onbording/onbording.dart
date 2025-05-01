import 'package:demo/features/auhentication/controllers/onbording/onbording_controller.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:demo/utils/device/device_utility.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBordingscreen extends StatelessWidget {
  const OnBordingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBordingController());

    return Scaffold(
        body: Stack(
      children: [
        //horizonal scrolling
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBordingPage(
              image: ImageString.onBording3,
              title: TextStrings.onBordingtitle3,
              subtitle: TextStrings.onBordingsubtitle3,
            ),
            OnBordingPage(
              image: ImageString.onBording1,
              title: TextStrings.onBordingtitle1,
              subtitle: TextStrings.onBordingsubtitle1,
            ),
            OnBordingPage(
              image: ImageString.onBording2,
              title: TextStrings.onBordingtitle2,
              subtitle: TextStrings.onBordingsubtitle2,
            ),
          ],
        ),
        //skip button
        const skipbtn(),

        //dot navigation
        const NaviGation(),

        //circular Button
        const CircularButton()
      ],
    ));
  }
}

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSize.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
          onPressed: () => OnBordingController.instance.nextpage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? TColors.primary : TColors.primary),
          child: const Icon(Iconsax.arrow_right_3)),
    );
  }
}

class NaviGation extends StatelessWidget {
  const NaviGation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBordingController.instance;
    final dark = THelperFunctions.isDarkMode((context));

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSize.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.primary,
            dotHeight: 6),
      ),
    );
  }
}

// ignore: camel_case_types
class skipbtn extends StatelessWidget {
  const skipbtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
            onPressed: () => OnBordingController.instance.skipPage(),
            child: const Text('skip')));
  }
}

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            Image(
                width: THelperFunctions.screenWidth() * 1,
                height: THelperFunctions.screenHeight() * 0.6,
                image: AssetImage(image)),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSize.spaceBtwItems,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
