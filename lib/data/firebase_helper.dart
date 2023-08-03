
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:railway/login_page.dart';

class FirebaseHelper{
  Future singup(email,password,context)async{
    try{
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      if(credential.user!.uid.isNotEmpty){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),));
      }else{
        print("not valid");
      }
    }on FirebaseAuthException catch(e){
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    }

  }
}