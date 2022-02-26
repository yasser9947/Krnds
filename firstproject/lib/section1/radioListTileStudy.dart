import 'package:flutter/material.dart';


class RadioListTileStudy extends StatefulWidget {
  RadioListTileStudy({Key? key}) : super(key: key);

  @override
  State<RadioListTileStudy> createState() => _RadioListTileStudyState();
}

class _RadioListTileStudyState extends State<RadioListTileStudy> {
  var coountry = "KSA";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
         child: Container(padding: EdgeInsets.all(10), child: Column(
           children :[ 
             Text("choose")
             ,
             ...getMpppingFlags()]
         ),)
        ));
  }

  List<RadioListTile> getMpppingFlags() {

      return ["KSA" ,"KWT" ,"USA"].map((e) => RadioListTile( title: Text(e) , subtitle: Text("saudia arabia "), value: e, groupValue: coountry, onChanged: (value) => setState(() =>  coountry = value.toString()))).toList();
  }
}