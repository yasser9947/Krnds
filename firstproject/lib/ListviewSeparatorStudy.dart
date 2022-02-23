import 'package:flutter/material.dart';


class ListviewSeparatorStudy extends StatefulWidget {
  ListviewSeparatorStudy({Key? key}) : super(key: key);

  @override
  State<ListviewSeparatorStudy> createState() => _ListviewSeparatorStudyState();
}

class _ListviewSeparatorStudyState extends State<ListviewSeparatorStudy> {


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
      body: Container(child: ListView.separated(
        separatorBuilder: (context, index) => Divider(color: Colors.pink , height: 2, thickness: 2, ),
          itemCount: mobile.length,
          physics: BouncingScrollPhysics(), 
          itemBuilder: (context ,i) {

          return ListTile(title: Text(mobile[i]["name"]), subtitle: Text(mobile[i]["screen"]), trailing: Text("cpu : ${mobile[i]['cpu']}"),);
        }
        ),
        )

    );
  }
}