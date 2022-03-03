import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart'; 


class JiffyStudy extends StatefulWidget {
  JiffyStudy({Key? key}) : super(key: key);

  @override
  State<JiffyStudy> createState() => _JiffyStudyState();
}

class _JiffyStudyState extends State<JiffyStudy> {

  DateTime date = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future"),),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Show Date time"), 
              onPressed:  (){
            }),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("te tieme is "),
            ),
            Text(Jiffy(date).E)

          ],
        )
      ,),
    );
  }
}