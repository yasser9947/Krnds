import 'package:flutter/material.dart';

class ChecboxStudy extends StatefulWidget {
  ChecboxStudy({Key? key}) : super(key: key);

  @override
  State<ChecboxStudy> createState() => _ChecboxStudyState();
}

class _ChecboxStudyState extends State<ChecboxStudy> {
  var usa = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
         child: Container(padding: EdgeInsets.all(10), child: Column(
           children : [
             Text("Coose your contry " , style: TextStyle(fontSize: 30),) ,
             Row(
               children: [
                 Text("USA"),
                 Checkbox(value: usa, onChanged: (val) => setState(() {
                   usa = !usa; 
                 }))
               ],
             )


           ]
         ),)
        ));
  }
}