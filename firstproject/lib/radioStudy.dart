
import 'package:flutter/material.dart';


class radioStudy extends StatefulWidget {
  radioStudy({Key? key}) : super(key: key);

  @override
  State<radioStudy> createState() => _radioStudyState();
}

class _radioStudyState extends State<radioStudy> {

  String country ="USA" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
         child: Container(padding: EdgeInsets.all(10), child: Column(
           children :[ 
             Text("choose" , style: TextStyle(fontSize: 30),)
             ,
             Row(
               children: [
                 Text("USA") , 
                 Radio(value: "USA", groupValue: country, onChanged: (val) {
                    setState(() {
                      country = val.toString();
                    });
                 }),
                  Text("KSA") , 
                 Radio(value: "KSA", groupValue: country, onChanged: (val) {
                    setState(() {
                      country = val.toString();
                    });
                 }) ,
                  Text("UAE") , 
                 Radio(value: "UAE", groupValue: country, onChanged: (val) {
                    setState(() {
                      country = val.toString();
                    });
                 })
               ],
             )
             ]
         ),)
        ));
  }
}