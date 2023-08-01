import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Column(

        children: [
          Expanded(flex: 3,child: Container(child: Image.asset("images/logo.png") ,)),
          Expanded(flex: 2,child: Container(child:Column(
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
          Expanded(flex: 3,child: Container(child: Column(
            children: [
              Expanded(flex: 1,child:Column(children: [
                Image.asset("images/button.png"),
                Stack(
                  children: [
                  Text("hello")
                ],)
              ],)),
              Expanded(flex: 1,child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(children: [
                  Expanded(flex: 1, child: Image.asset("images/button.png"),),
                  SizedBox(width: 50,),
                  Expanded(flex: 1, child: Image.asset("images/button.png")),
                ],),
              )),
            ],
          ),)),
        ],
      ),
    );
  }
}
