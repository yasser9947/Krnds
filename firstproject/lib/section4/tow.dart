import 'package:flutter/material.dart';


class Tow extends StatelessWidget {
  const Tow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Tow "),),
    body: Column(children: [
      Text("PAge Tow"),
      RaisedButton(onPressed: () {
        if(Navigator.of(context).canPop()){
        Navigator.of(context).pop();
        }
        } , child: Text("back "),)
    ],)
    ,);
  }
}