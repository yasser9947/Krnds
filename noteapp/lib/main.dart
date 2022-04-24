import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/auth/login.dart';
import 'package:noteapp/auth/signup.dart';
import 'package:noteapp/pages/USER/wash-service/AllWashServiceUser.dart';
import 'package:noteapp/pages/USER/wash-service/NewWashCarService.dart';
import 'package:noteapp/pages/crud/addnote.dart';
import 'package:noteapp/pages/homepage.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = new FlutterSecureStorage();

  runApp(MyApp(jwt: await storage.read(key: "jwt")));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.jwt}) : super(key: key);
  final jwt;
  // This widget is the root of your application.

  getIsLogin() => this.getIsLogin();
  @override
  Widget build(BuildContext context) {
    print(jwt);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        buttonColor: Colors.blue,
      ),
      home: jwt != null ? HomePage() : Login(),
      routes: {
        "login": (context) => Login(),
        "signup": (context) => SignUp(),
        "homepage": (context) => HomePage(),
        "add_wash_service": (context) => AddNotes(),
        "all_wash_service_user": (context) => AllWashServiceUser(),
        "add_new_wash_service" :(context)=> NewWashCarService()
      },
    );
  }
}

// flutter run -d chrome