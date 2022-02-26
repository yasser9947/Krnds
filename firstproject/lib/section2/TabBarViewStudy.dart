import 'package:flutter/material.dart';

class TabBarViewStudy extends StatefulWidget {
  TabBarViewStudy({Key? key}) : super(key: key);

  @override
  State<TabBarViewStudy> createState() => _TabBarViewStudyState();
}

class _TabBarViewStudyState extends State<TabBarViewStudy> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: 
    
    Scaffold(appBar: AppBar(title: Text("Homepage"),)
    ,
    body: TabBarView(children: [
      Container(child: Text("View 1 "), width: double.infinity, color: Colors.green,),
      Container(child: Text("View 2 "), width: double.infinity, color: Colors.blue,)
    ],),
    )
    );
  }
}