import 'package:demo/features/auhentication/controllers/signup/signup_controller.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:demo/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSigninForm extends StatelessWidget {
  const TSigninForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            Column(
              children: [
                TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      TValidator.validateEmptyText('First name', value),
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
                      labelText: TextStrings.firstname,
                      labelStyle:
                          const TextStyle(color: Color.fromARGB(255, 12, 0, 0)),
                      prefixIcon: const Icon(Iconsax.user)),
                ),
                const SizedBox(
                  height: TSize.spaceBtwInputFields,
                ),
                TextFormField(
                  controller: controller.lastname,
                  validator: (value) =>
                      TValidator.validateEmptyText('Last name', value),
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
                      labelText: TextStrings.lastname,
                      labelStyle:
                          const TextStyle(color: Color.fromARGB(255, 12, 0, 0)),
                      prefixIcon: const Icon(Iconsax.user)),
                ),
                const SizedBox(
                  height: TSize.spaceBtwInputFields,
                ),
              ],
            ),
            //username
            TextFormField(
              validator: (value) =>
                  TValidator.validateEmptyText('Username', value),
              controller: controller.username,
              decoration: InputDecoration(
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
                  labelText: TextStrings.username,
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 12, 0, 0)),
                  prefixIcon: const Icon(Iconsax.user_edit)),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),

            //email
            TextFormField(
              validator: (value) => TValidator.validateEmail(value),
              controller: controller.email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
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
                  labelText: TextStrings.email,
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 12, 0, 0)),
                  prefixIcon: const Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),

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
                            color: Color.fromARGB(255, 35, 35, 35), width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 15, 14, 14), width: 1)),
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
            const SizedBox(
              height: TSize.spaceBtwInputFields,
            ),

            //checkbox
            Row(
              children: [
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Obx(() => Checkbox(
                        value: controller.privacypolicy.value,
                        onChanged: (value) => controller.privacypolicy.value =
                            !controller.privacypolicy.value))),
                const SizedBox(
                  width: TSize.spaceBtwItems,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: '${TextStrings.iagree} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: TextStrings.privacypolicy,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.textWhite : Colors.blue,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? TColors.textWhite : Colors.blue,
                          )),
                ]))
              ],
            ),
            const SizedBox(
              height: TSize.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.signup(),
                style:
                    ElevatedButton.styleFrom(backgroundColor: TColors.primary),
                child: const Text(TextStrings.creteaccount),
              ),
            )
          ],
        ));
  }
}
