import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:railway/data/firebase_helper.dart';
import 'package:railway/login_page.dart';
import 'package:railway/profile/book_page.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Container(
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(child: Image.asset("images/logo.png"))),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                        child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                child: TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                  hintText: "email",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            ))),
                        Expanded(
                            flex: 1,
                            child: Container(
                                child: TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            ))),
                      ],
                    )),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: GestureDetector(
                                onTap: () {
                                  var e=emailController.text;
                                  var p=passwordController.text;
                                  var obj=FirebaseHelper().singup(e, p, context);
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),));
                                },
                                child: Container(
                                  child: Image.asset("images/button.png"),
                                ))),
                        Expanded(
                            flex: 1,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 80),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      child: Image.asset("images/facebook.png"),
                                    )),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                        child: Container(
                                      child: Image.asset("images/google.webp"),
                                    )),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                        child: GestureDetector(
                                          onTap: () {

                                          },
                                          child: Container(
                                      child: Image.asset("images/phone.png"),
                                    ),
                                        )),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
