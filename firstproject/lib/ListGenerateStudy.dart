import 'package:flutter/material.dart';


class ListGenerateStudy extends StatefulWidget {
  ListGenerateStudy({Key? key}) : super(key: key);

  @override
  State<ListGenerateStudy> createState() => _ListGenerateStudyState();
}

class _ListGenerateStudyState extends State<ListGenerateStudy> {


  List mobile = [{
        "name" : "s20 ultra" ,
        "screen" :"6.44",
        "cpu":"8 core" 
  },
  {
        "name" : "s21 ultra" ,
        "screen" :"4.44",
        "cpu":"10 core" 
  },
  {
        "name" : "s22 ultra" ,
        "screen" :"8.44",
        "cpu":"12 core" 
  },];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(child: GridView(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 5 , mainAxisSpacing: 5 , childAspectRatio:1),
        children:List.generate(20 ,(index) => Container(child: Text("this is Container $index"), color: Colors.pinkAccent,)) 
        ,
         ),
        )
    );
  }
}

//  يوجد GridView.count تراها احسن من الاولي 
