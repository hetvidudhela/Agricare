import 'package:demo/features/auhentication/controllers/login/login_controller.dart';
import 'package:demo/features/auhentication/screens/password_Configuration/forget_password.dart';
import 'package:demo/features/auhentication/screens/signup/signup.dart';

import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:demo/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
        key: controller.loginFormKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwSections),
          child: Column(
            children: [
              TextFormField(
                controller: controller.email,
                validator: (value) => TValidator.validateEmail(value),
                decoration: InputDecoration(
                    hintText: "Enter Email",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 35, 35, 35), width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 15, 14, 14), width: 1)),
                    prefixIcon: const Icon(Icons.email),
                    labelText: TextStrings.email,
                    labelStyle:
                        const TextStyle(color: Color.fromARGB(255, 12, 0, 0))),
              ),
              const SizedBox(height: TSize.spaceBtwInputFields),
              //password

              Obx(
                () => TextFormField(
                  validator: (value) => TValidator.validatepassword(value),
                  controller: controller.password,
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 35, 35, 35),
                              width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 15, 14, 14),
                              width: 1)),
                      labelText: TextStrings.password,
                      labelStyle:
                          const TextStyle(color: Color.fromARGB(255, 12, 0, 0)),
                      prefixIcon: const Icon(Iconsax.password_check),
                      suffixIcon: IconButton(
                          onPressed: () => controller.hidePassword.value =
                              !controller.hidePassword.value,
                          icon: Icon(controller.hidePassword.value
                              ? Iconsax.eye_slash
                              : Iconsax.eye))),
                ),
              ),
              const SizedBox(height: TSize.spaceBtwInputFields / 2),

              //remember me &&forgetpassword

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //remember me

                  Row(
                    children: [
                      Obx(() => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value =
                              !controller.rememberMe.value)),
                      const Text(
                        TextStrings.rememberme,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  //forget password
                  TextButton(
                      onPressed: () => Get.to(() => const ForgetPassword()),
                      child: const Text(TextStrings.forgotpass)),
                ],
              ),
              const SizedBox(height: 10.0),
              //sign in btn
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.emailAndPasswordSignIn(),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: TColors.primary),
                    child: const Text(TextStrings.signin)),
              ),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              // create aacount btn
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => Get.to(() => const SignupScreen()),
                      child: const Text(TextStrings.creteaccount))),
            ],
          ),
        ));
  }
}
