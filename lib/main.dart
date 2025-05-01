import 'package:demo/data/reposiories/authentication/authentication_repository.dart';
import 'package:demo/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';

Future<void> main() async {
// add widget buinding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

// add local storage

  await GetStorage.init();

  // awiat splash  until  other item load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

//initialize the firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  runApp(const App());
}
