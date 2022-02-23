import 'package:flutter/material.dart';


class GridViewBuilderStudy extends StatefulWidget {
  GridViewBuilderStudy({Key? key}) : super(key: key);

  @override
  State<GridViewBuilderStudy> createState() => _GridViewBuilderStudyState();
}

class _GridViewBuilderStudyState extends State<GridViewBuilderStudy> {


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
      body: Container(child: GridView.builder(
        itemCount: mobile.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 5 , mainAxisSpacing: 5 , childAspectRatio:1),
         itemBuilder: (context , i){

         return ListTile(
           tileColor: Colors.green,
           title: Text(mobile[i]["name"]), subtitle: Text(mobile[i]["screen"]),);
         }
         
         ),
        )

    );
  }
}
//  يوجد GridView.count تراها احسن من الاولي 
