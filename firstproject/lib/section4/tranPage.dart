import 'package:firstproject/section4/one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TranPage extends StatefulWidget {
  TranPage({Key? key}) : super(key: key);

  @override
  State<TranPage> createState() => _TranPageState();
}

class _TranPageState extends State<TranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Trans Page  ")
    ,),
    body: Column(children: [
      Center(child: RaisedButton(onPressed: () =>  Navigator.of(context).pushNamed("one"), child: Text("GO to page 1 "),)) , 
      Center(child: RaisedButton(onPressed: () =>  Navigator.of(context).pushReplacementNamed("tow"), child: Text("GO to page 2 "),)) , 
      Center(child: RaisedButton(onPressed: () =>  Navigator.of(context).pushNamed("three"), child: Text("GO to page 3 "),)) , 


     
    ],),
    );
  }
}

// اظا تبيها مانولي

        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (contex){
        //   return One();
        // }));