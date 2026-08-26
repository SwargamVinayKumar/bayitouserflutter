import 'package:bayitouser/pages/sign_in_page.dart';
import 'package:bayitouser/pages/splash_page.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/utils/firebase_notification.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
  // Parallelize initializations to speed up startup
  await Future.wait([
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]),
  ]);

  // Initialize notifications
  final notificationService = FireBaseNotification();
  await notificationService.initAwesomeNotification();
  notificationService.initPushNotification();
  notificationService.setListeners();
  
  // Request permissions in the background (non-blocking)
  notificationService.requestPermissions();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: CustomColors.primary,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bayito',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primary),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}

