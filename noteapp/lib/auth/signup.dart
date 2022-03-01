import 'package:flutter/material.dart';



class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Image.asset('images/logo.jpg' , height: 200, width: 200,)),
        Container(
          padding: EdgeInsets.all(20),
          child: Form(child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "username",
                  border: OutlineInputBorder(borderSide: BorderSide(width: 1))
                ),
              ),
               Padding(
                 padding:  EdgeInsets.only(top: 15),
                 child: TextFormField(
                   obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key),
                    hintText: "password",
                    border: OutlineInputBorder(borderSide: BorderSide(width: 1))
                  ),
              ),
               ),
               Padding(
                 padding:  EdgeInsets.only(top: 15),
                 child: TextFormField(
                   obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key),
                    hintText: "confirm password",
                    border: OutlineInputBorder(borderSide: BorderSide(width: 1))
                  ),
              ),
               ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("if you have accout "),
                      InkWell(child: Text("click here", style: TextStyle(color: Colors.blue),), onTap: () =>  Navigator.of(context).pushNamed("login"), )
                    ],
                  ),
                )
               ,
               Container(
                 margin:  EdgeInsets.only(top: 15),
                 child: RaisedButton(
                //  color: Colors.blue,
                 textColor: Colors.white,
                 child: Text("تسحيل " , style: TextStyle(fontSize: 16),),
                  onPressed: ()=>"",),)
            ],
          )),
        )
      ],)
    );
  }
}