import 'package:flutter/material.dart';

class SnackBarStydy extends StatefulWidget {
  SnackBarStydy({Key? key}) : super(key: key);

  @override
  State<SnackBarStydy> createState() => _SnackBarStydyState();
}

class _SnackBarStydyState extends State<SnackBarStydy> {
  GlobalKey<ScaffoldState> scoffaldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:scoffaldKey ,
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(child: 
        MaterialButton(child: Text("SnackBar"),onPressed: ()  {
        var snackBar = SnackBar(content: Text("this is snack BBar")
         , duration: Duration(seconds: 4),
         behavior: SnackBarBehavior.floating,
         backgroundColor: Colors.pink,
         action: SnackBarAction(label: "close", onPressed: () {
           print("close");
         },),
         );
           // ignore: deprecated_member_use
           scoffaldKey.currentState?.showSnackBar(snackBar);
        
        }
        
        ,)
        ,)
    );
  }
}