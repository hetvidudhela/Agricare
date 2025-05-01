import 'package:demo/features/personalizaion/controller/user_controller.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:demo/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ReAuthenticateLogin extends StatelessWidget {
  // ignore: use_super_parameters
  const ReAuthenticateLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Re-authenticate user'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Form(
              key: controller.reAuthFormkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //email
                  TextFormField(
                    controller: controller.verifyEmail,
                    validator: TValidator.validateEmail,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: TextStrings.email),
                  ),
                  const SizedBox(height: TSize.spaceBtwInputFields),

                  //password
                  Obx(() => TextFormField(
                        obscureText: controller.hidepassword.value,
                        controller: controller.verifypassword,
                        // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                        validator: (Value) =>
                            TValidator.validateEmptyText(' Password', Value),
                        decoration: InputDecoration(
                            labelText: TextStrings.password,
                            prefixIcon: const Icon(Iconsax.password_check),
                            suffixIcon: IconButton(
                                onPressed: () => controller.hidepassword.value =
                                    !controller.hidepassword.value,
                                icon: const Icon(Iconsax.eye_slash))),
                      )),
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),

                  //login btn
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () =>
                            controller.reAuthenticateEmailAndPassword(),
                        child: const Text('Verify')),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
