import 'package:flutter/material.dart';

import 'TabBarViewStudy.dart';

class BottomNavigationBarStudy extends StatefulWidget {
  BottomNavigationBarStudy({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarStudy> createState() => _BottomNavigationBarStudyState();
}

class _BottomNavigationBarStudyState extends State<BottomNavigationBarStudy> {
  
  var currentInde = 0;

  List<Widget> widgets = [
    Text("YAsir"),
    TabBarViewStudy()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page"),),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green.shade100,
        currentIndex: currentInde,
        onTap: (value) => setState(() {
          currentInde = value;
        }),
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home) , label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.media_bluetooth_off) , label: "blutoth"),
        ],
      ),
      body: widgets.elementAt(currentInde),
    );
  }
}
