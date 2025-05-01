import 'package:demo/data/reposiories/authentication/authentication_repository.dart';
import 'package:demo/features/auhentication/controllers/signup/verify_email_controller.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});
  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              //gif
              Image(
                image: const AssetImage(ImageString.gif1),
                width: THelperFunctions.screenWidth() * 0.7,
                // height: THelperFunctions.screenHeight() * 0.27,
              ),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //title&sub
              Text(
                TextStrings.confirmemail,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(
                email ?? '',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(
                TextStrings.confirmemailsubtitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //btn
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.checkEmailVerificationStatus(),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primary),
                  child: const Text(TextStrings.tcontinue),
                ),
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => controller.sendEmailVerification(),
                  child: const Text(TextStrings.resendemail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
