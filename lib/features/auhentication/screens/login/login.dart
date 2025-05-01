import 'package:demo/common/styles/spacing_styles.dart';
import 'package:demo/common/styles/widgets_login_signup/form_divider.dart';
import 'package:demo/common/styles/widgets_login_signup/social_buttons.dart';
import 'package:demo/features/auhentication/screens/login/widgets/login_form.dart';
import 'package:demo/features/auhentication/screens/login/widgets/login_header.dart';
import 'package:demo/utils/constans/size.dart';
import 'package:demo/utils/constans/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: TSpacingStyle.paddingwithAppBarHeight,
                child: Column(
                  children: [
                    TLoginHeader(),

                    //Form
                    TLoginForm(),

                    //dividers
                    TFormDivider(dividerText: TextStrings.orsigninwith),
                    SizedBox(
                      height: TSize.spaceBtwItems,
                    ),

                    //footer
                    TSocialButtons()
                  ],
                ))));
  }
}
