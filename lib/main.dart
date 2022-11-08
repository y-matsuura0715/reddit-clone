import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_tutorial/features/screens/login_screen.dart';
import 'package:reddit_tutorial/theme/pallete.dart';

import 'firebase_options.dart';

void main() async {
  //Flutter Engineの機能を使用する際の初期化処理、≈
  //Flutter Engineの機能とは、(Android, iOSなど) の画面の向きの設定やロケールなどです。
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reddit Tutrial',
      theme: Pallete.lightModeAppTheme,
      home: const LoginScreen(),
    );
  }
}
