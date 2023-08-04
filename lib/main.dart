import 'package:flutter/material.dart';
import 'package:railway/data/firebase_helper.dart';
import 'package:railway/home_page.dart';
import 'package:railway/login_page.dart';
import 'package:railway/profile/book_page.dart';
import 'package:railway/profile/demo.dart';
import 'package:railway/registration/singup_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}