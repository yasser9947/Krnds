// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class AleartDialogStudy extends StatefulWidget {
  AleartDialogStudy({Key? key}) : super(key: key);

  @override
  State<AleartDialogStudy> createState() => _AleartDialogStudyState();
}

class _AleartDialogStudyState extends State<AleartDialogStudy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
      child: RaisedButton(child: Text("Show Aleart ") , onPressed: () {
        showDialog(context: context, builder: (context){

          return  AlertDialog(
            actions: [
              FlatButton(onPressed: ()=>print("ok"), child: Text("ok")),
              FlatButton(onPressed: ()=>Navigator.of(context).pop(), child: Text("close"))
            ],
            titlePadding: EdgeInsets.symmetric(vertical: 5,horizontal: 3),
            title: Text("Title "),
            content: Text("Content "),
            contentPadding: EdgeInsets.all(20),
            
          );
        });

      },
      ),
    )
    );
  }
}