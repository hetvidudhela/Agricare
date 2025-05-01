import 'dart:async';

import 'package:demo/common/widgets/loader/loaders.dart';
import 'package:demo/common/widgets/sucess_screen/sucess_screen.dart';
import 'package:demo/data/reposiories/authentication/authentication_repository.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  //send email link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();

      TLoaders.successSnackBar(
          title: 'Email sent ', message: 'Please check your mail box');
    } catch (e) {
      TLoaders.errorSnackBar(
          title: 'Oopps something wrong!', message: e.toString());
    }
  }

  //timer to automatically redirect on email vaerification
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SucessScreen(
              image: ImageString.success,
              title: TextStrings.youraccountcreatedtitle,
              subTitle: TextStrings.youraccountcreatedsubtitle,
              onpressed: () =>
                  AuthenticationRepository.instance.screenRedirect(),
            ));
      }
    });
  }

  //manually check if email varified
  checkEmailVerificationStatus() {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(() => SucessScreen(
            image: ImageString.success,
            title: TextStrings.youraccountcreatedtitle,
            subTitle: TextStrings.youraccountcreatedsubtitle,
            onpressed: () => AuthenticationRepository.instance.screenRedirect(),
          ));
    }
  }
}
