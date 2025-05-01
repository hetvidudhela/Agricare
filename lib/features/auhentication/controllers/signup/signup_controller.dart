import 'package:demo/common/widgets/loader/loaders.dart';
import 'package:demo/common/widgets/loader/network_manager.dart';
import 'package:demo/data/reposiories/authentication/authentication_repository.dart';
import 'package:demo/data/reposiories/user/user_repository.dart';
import 'package:demo/features/auhentication/screens/signup/v_email.dart';
import 'package:demo/utils/constans/image_string.dart';
import 'package:demo/utils/constans/usermodel.dart';
import 'package:demo/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final hidePassword = true.obs;
  final privacypolicy = true.obs;
  final email = TextEditingController();
  final lastname = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  //final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); // for validation

  void signup() async {
    try {
      //start loading
      TFullScreenLoader.openLoadingDialog(
          'we are processing your information.....', ImageString.gif1);

      //internet is on or not
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      //form validation
      if (!signupFormKey.currentState!.validate()) {
        return;
      }

      //privacy policy
      if (!privacypolicy.value) {
        TLoaders.warningSnackBar(
            title: 'Accept privacy policy',
            message: 'To create accout you must accept our privecy policy');
        return;
      }

      //register  user in  the firebase authentication & save  user data  in the firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // save data  in firestore
      final newUser = UserModel(
          id: userCredential.user!.uid,
          email: email.text.trim(),
          username: username.text.trim(),
          firstName: firstName.text.trim(),
          lastName: lastname.text.trim(),
          profilePicture: '');

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      //remove loader
      TFullScreenLoader.stopLoading();

      // Show Success Message
      TLoaders.successSnackBar(
          title: 'Congratulations',
          message: 'Your account has been created! Verify email to continue');

      //move to verify email screen
      Get.to(() => VerifyEmailScreen(
            email: email.text.trim(),
          ));
    } catch (e) {
      TLoaders.errorSnackBar(title: 'On snap!!', message: e.toString());
    }
  }
}
