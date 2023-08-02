import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:railway/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),));
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          // child: SvgPicture.asset("images/home.svg"),
          child: Image.asset("images/home.png"),
        ),
      ),

    );
  }
}
