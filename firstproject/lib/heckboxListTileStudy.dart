import 'package:flutter/material.dart';


class checkboxListTileStudy extends StatefulWidget {
  checkboxListTileStudy({Key? key}) : super(key: key);

  @override
  State<checkboxListTileStudy> createState() => _checkboxListTileStudyState();
}

class _checkboxListTileStudyState extends State<checkboxListTileStudy> {
  var usa = false;
  var ksa = false;
  var uea = false;
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


  List<CheckboxListTile> getMpppingFlags () =>[{"usa":usa , "name" : "usa"} , {"ksa":ksa , "name" : "ksa"} , {"uea":uea ,"name" : "uea"}].map((e) =>   CheckboxListTile(value: usa, 
              onChanged: (val)=>setState(()=> usa= !usa) ,
               title: Text("usa"),
               subtitle: Text("chose "), 
               activeColor: Colors.amber,
               secondary: Text("select "),
               ) ).toList();
}

  class Name {
    var name ;
    var value ;

    
  }
