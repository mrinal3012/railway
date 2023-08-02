import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:railway/data/custom_widget_page.dart';
import 'package:railway/profile/book_page.dart';
import 'package:railway/registration/singup_page.dart';

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
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Container(
          child: Column(
            children: [
              Expanded(flex: 3,child: Container(child: Image.asset("images/logo.png"))),
              Expanded(flex: 2,child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(child:Column(
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
                )),
              )),
             
              Expanded(flex: 2,child: Container(child: Column(
                children: [
                  Expanded(flex: 1,child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector( onTap:
                          () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookPage(),));
                          }, child: Container(child: Image.asset("images/login.png"),)),
                    TextButton(onPressed: () {

                    }, child: Text("Forgot Password",style:mystyleroboto(13,Colors.black.withOpacity(.8),FontWeight.w700)))
                    ],
                  )),
                  Expanded(flex: 1,child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Row(children: [
                        Text("I dont have a account?",style:mystyleroboto(15,Colors.black.withOpacity(.8),FontWeight.w800)),
                        TextButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SingUpPage(),));
                        }, child:Text("Register",style:mystyleroboto(15,Colors.cyan,FontWeight.w800)))
                      ],),
                    ),
                  )),
                ],
              ),)),
            ],
          ),
        ),
      ),
    );
  }
}
