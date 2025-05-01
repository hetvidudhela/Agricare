import 'package:demo/bindings/genral_bindings.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      initialBinding: GenralBindings(),
      home: const Scaffold(
          backgroundColor: TColors.primary,
          body: Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          ))),
    );
  }
}
