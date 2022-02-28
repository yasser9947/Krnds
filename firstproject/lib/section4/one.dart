import 'package:flutter/material.dart';


class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("One "),),
    body: Column(children: [
      Text("PAge ONe"),
      RaisedButton(onPressed: () {

        print(Navigator.of(context).canPop());
        Navigator.of(context).pop();
        
        } , child: Text("back "),)
    ],)
    ,);
  }
}