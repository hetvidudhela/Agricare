import 'package:demo/common/styles/spacing_styles.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.onpressed});

  final String image, title, subTitle;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingwithAppBarHeight * 2,
          child: Column(
            children: [
              //imahe
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.7,
                height: THelperFunctions.screenHeight() * 0.37,
              ),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //title&sub
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),

              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onpressed,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primary),
                  child: const Text(TextStrings.tcontinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
