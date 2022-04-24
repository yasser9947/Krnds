import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email;
  var password;
  GlobalKey<ScaffoldState> scoffaldKey = new GlobalKey<ScaffoldState>();
  
  Future login() async {
    try {
      print("oks;k");
      var url ="http://192.168.1.207:8080/auth/login";
      var response = await Dio().post( url,data: jsonEncode(<String, String>{'username': email, "password": password}));
      print(response.data);
      if (response.data != null) {
        final storage = new FlutterSecureStorage();
        await storage.write(key: "jwt", value: response.data);
        Navigator.of(context).pushReplacementNamed("homepage");
      }
    } catch (e) {
      if (e is DioError) {
        //This is the custom message coming from the backend
        var snackBar = SnackBar(content: Text(e.response?.data['message'])
         , duration: Duration(seconds: 4),
         behavior: SnackBarBehavior.floating,
         backgroundColor: Colors.red.shade300,
         action: SnackBarAction(label: "close", textColor: Colors.black, onPressed: () {
         },),
         // ignore: deprecated_member_use
         );
        print(e.response?.data['message'] );
        scoffaldKey.currentState?.showSnackBar(snackBar);

      } else {
        throw Exception("Error");
      }
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key:scoffaldKey ,
        body: Center(
      child: ListView(
        shrinkWrap: true,
        children: [
          Center(
              child: Image.asset(
            'images/logo.jpg',
            height: 200,
            width: 200,
          )),
          Container(
            padding: EdgeInsets.all(20),
            child: Form(
                child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(minWidth: 100, maxWidth: 500),
                  child: TextFormField(
                    onChanged: (value) => setState(() {
                      email = value;
                    }),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "username",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  constraints: BoxConstraints(minWidth: 100, maxWidth: 500),
                  child: TextFormField(
                    obscureText: true,
                    onChanged: (value) => setState(() {
                      password = value;
                    }),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        hintText: "password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  constraints: BoxConstraints(minWidth: 100, maxWidth: 500),
                  child: Row(
                    children: [
                      Text("if you haven't accout "),
                      InkWell(
                        child: Text(
                          "click here",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () => Navigator.of(context).pushNamed("signup"),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: RaisedButton(
                      //  color: Colors.blue,
                      textColor: Colors.white,
                      child: Text(
                        "  تسحيل الدخول",
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () async {
                        await login();
                      }),
                )
              ],
            )),
          )
        ],
      ),
    ));
  }
}
