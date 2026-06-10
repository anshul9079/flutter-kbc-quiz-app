import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kbc_app/home.dart';
import 'package:kbc_app/view/login.dart';
import 'package:overlay_support/overlay_support.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(OverlaySupport.global(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kbc quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        dialogBackgroundColor: Colors.purple,
      ),
      home: Home(),
    );
  }
}
