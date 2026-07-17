import 'package:bayitouser/pages/splash_page.dart';
import 'package:bayitouser/utils/custom_color.dart';
import 'package:bayitouser/utils/firebase_notification.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  // try {
  //   dynamic result = await KommunicateFlutterPlugin.buildConversation(
  //     {
  //       'appId': ConfigKeys.appId,
  //     },
  //   );
  //   print("Conversation builder success : " + result.toString());
  // } catch (e) {
  //   print("Conversation builder error : " + e.toString());
  // }
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  await FireBaseNotification().initNotifications();

  // String signature = await SmsAutoFill().getAppSignature;
  // print("📩 App Signature: $signature");

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: CustomColors.primary,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bayito',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashPage(),
    );
  }
}

