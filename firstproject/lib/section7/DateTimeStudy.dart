import 'package:flutter/material.dart'; 


class DAtetimeStudy extends StatefulWidget {
  DAtetimeStudy({Key? key}) : super(key: key);

  @override
  State<DAtetimeStudy> createState() => _DAtetimeStudyState();
}

class _DAtetimeStudyState extends State<DAtetimeStudy> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future"),),
      body: Center(child:RaisedButton(child: Text("Show Date time"), onPressed:  (){
          print(DateTime.now().weekday);
          print(DateTime.now().add(Duration(days: 10)));
          print(DateTime.now().subtract(Duration(days: 10)));
          print(DateTime.now().isAfter(DateTime.now().subtract(Duration(days: 10))));
        })
      ,),
    );
  }
}