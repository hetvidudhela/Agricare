import 'package:demo/common/widgets/loader/loaders.dart';
import 'package:demo/common/widgets/loader/network_manager.dart';
import 'package:demo/data/reposiories/user/user_repository.dart';
import 'package:demo/features/personalizaion/controller/user_controller.dart';
import 'package:demo/features/personalizaion/screens/profile/widget/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstname = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  Future<void> initializeNames() async {
    firstname.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      /* TFullScreenLoader.openLoadingDialog(
          'we are updateing your information', ImageString.success); */

      //internet is on or not
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        //  TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!updateUserNameFormKey.currentState!.validate()) {
        //TFullScreenLoader.stopLoading();
        return;
      }

      Map<String, dynamic> name = {
        'FirstName': firstname.text.trim(),
        'LastName': lastName.text.trim()
      };
      await userRepository.updateSigneField(name);

      // Update the Rx User value

      userController.user.value.firstName = firstname.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      // Remove Loader
      //    TFullScreenLoader.stopLoading();

// Show Success Message
      TLoaders.successSnackBar(
          title: 'Congratulations', message: 'Your Name has been updated.');

      Get.off(() => const ProfileScreen());
    } catch (e) {
      //  TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(
          title: 'oopps something wrong!', message: e.toString());
    }
  }
}
