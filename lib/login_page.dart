import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          children: [
            Expanded(flex: 1,child: Container(child:Image.asset("images/home.png") ,)),
            Expanded(flex: 1,child: Container(child:Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(child: TextFormField(controller: emailController, decoration: InputDecoration(
                        hintText: "email", border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                    ))),

                Expanded(
                    flex: 1,
                    child: Container(child: TextFormField(controller: passwordController, decoration: InputDecoration(
                        hintText: "Password", border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                    ))),

              ],
            ))),
            Expanded(flex: 1,child: Container(child: Column(
              children: [
                Expanded(flex: 1,child: Image.asset("images/button.png")),
                Expanded(flex: 1,child: Row(children: [
                  Text("I dont have a account? "),
                  Text("Register")
                ],)),
              ],
            ),)),
          ],
        ),
      ),
    );
  }
}
