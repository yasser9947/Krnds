import 'package:flutter/material.dart';
import 'package:noteapp/auth/login.dart';
import 'package:noteapp/auth/signup.dart';
import 'package:noteapp/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red , 
        buttonColor: Colors.red
      ),
      home: Login(),
      routes: {
        "login" : (context) => Login() ,
        "signup" : (context) => SignUp(),
        "homepage" : (context)=> HomePage()
      },
    );
  }
}

