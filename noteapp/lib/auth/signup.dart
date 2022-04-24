import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late var email;
  late var password;

  Future signUp() async {
    try {
      var url = Uri.parse("http://192.168.1.207:8080/register");
      var response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'username': email,
          "password": password,
          "active": "true",
          "role": "null"
        }),
      );
      print(jsonDecode(response.body));
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                TextFormField(
                  enableInteractiveSelection: true,
                  onChanged: (value) => setState(() => email = value),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "email",
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    obscureText: true,
                    onChanged: (value) => setState(() => password = value),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        hintText: "password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        hintText: "confirm password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("if you have accout "),
                      InkWell(
                        child: Text(
                          "click here",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () => Navigator.of(context).pushNamed("login"),
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
                      "تسحيل ",
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () async => await signUp(),
                  ),
                )
              ],
            )),
          )
        ],
      ),
    ));
  }
}
