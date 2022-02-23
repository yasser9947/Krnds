import 'package:flutter/material.dart';

class SwitchStudy extends StatefulWidget {
  SwitchStudy({Key? key}) : super(key: key);

  @override
  State<SwitchStudy> createState() => _SwitchStudyState();
}

class _SwitchStudyState extends State<SwitchStudy> {
    var notfy = false;

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
                 Text("do you want notfy"),
                  Switch(value:notfy ,
                  inactiveThumbColor: Colors.amberAccent,
                  inactiveTrackColor: Colors.red,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.grey,
                   onChanged: (val) => {
                  setState(() {
                    notfy = !notfy;
                  })
                    }),
                
               ],
             ) , 
               Divider( height: 20,
                  thickness: 0,
                    indent: 0,
                  endIndent: 0,)
                  ,

                 Text("do you want notfy"),
                  SwitchListTile(value:notfy ,
                title: Text("choose "),
                  inactiveThumbColor: Colors.amberAccent,
                  inactiveTrackColor: Colors.red,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.grey,
                  secondary: Icon(Icons.notifications_active),
                  controlAffinity: ListTileControlAffinity.leading, // الاماكن له اربع  
                   onChanged: (val) => {
                  setState(() {
                    notfy = !notfy;
                  })
                    }),
           ]
         ),)
        ));
  }

  
}