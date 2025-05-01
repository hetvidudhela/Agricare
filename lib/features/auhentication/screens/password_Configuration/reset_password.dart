import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(ImageString.change),
                height: THelperFunctions.screenWidth() * 0.6,
              ),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //title&sub
              Text(
                TextStrings.changeyourpasswordtitle,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),

              Text(
                TextStrings.changeyourpasswordsubtitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primary),
                  child: const Text('Done'),
                ),
              ),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  /* style: TextButton.styleFrom(
                      backgroundColor: TColors.primary),*/
                  child: const Text('Resend Email'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
