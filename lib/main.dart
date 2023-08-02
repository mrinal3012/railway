import 'package:flutter/material.dart';
import 'package:railway/home_page.dart';
import 'package:railway/login_page.dart';
import 'package:railway/profile/book_page.dart';
import 'package:railway/profile/demo.dart';
import 'package:railway/registration/singup_page.dart';

void main() {
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