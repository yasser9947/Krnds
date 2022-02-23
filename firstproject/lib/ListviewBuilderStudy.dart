import 'package:flutter/material.dart';

class ListviewBuilderStudy extends StatefulWidget {
  ListviewBuilderStudy({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderStudy> createState() => _ListviewBuilderStudyState();
}

class _ListviewBuilderStudyState extends State<ListviewBuilderStudy> {

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
  }];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        child: ListView.builder(
          itemCount: mobile.length,
          itemBuilder: (context ,i) {

          return ListTile(title: Text(mobile[i]["name"]), subtitle: Text(mobile[i]["screen"]), trailing: Text("cpu : ${mobile[i]['cpu']}"),);
        }),
      ),
    );
  }
}

// ListView.Builder = ListView + loop