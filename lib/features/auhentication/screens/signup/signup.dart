import 'package:demo/common/styles/widgets_login_signup/form_divider.dart';
import 'package:demo/common/styles/widgets_login_signup/social_buttons.dart';
import 'package:demo/features/auhentication/screens/signup/widget/signup_form.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              //title
              Text(
                TextStrings.signuptitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),
              //form

              TSigninForm(dark: dark),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),
              //divider
              const TFormDivider(dividerText: TextStrings.orsignupwith),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //btn
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
