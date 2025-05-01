import 'package:demo/features/auhentication/screens/password_Configuration/reset_password.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //headings
            Text(
              TextStrings.forgetpasswordtitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSize.spaceBtwItems),
            Text(
              TextStrings.forgetpasswordsubtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSize.spaceBtwSections * 2),

            //textfield

            TextFormField(
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
            const SizedBox(height: TSize.spaceBtwSections),

            //submit btn
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPassword()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.primary),
                  child: const Text('Submit')),
            ),
          ],
        ),
      ),
    );
  }
}
