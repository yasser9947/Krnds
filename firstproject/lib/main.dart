// import 'dart:async';
// import 'dart:ffi';

import 'package:firstproject/section2/AppBarStudy.dart';
import 'package:firstproject/section2/BottomNavigationBarStudy.dart';
import 'package:firstproject/section2/PageViewStudy.dart';
import 'package:firstproject/section2/TabBarViewStudy.dart';
import 'package:firstproject/section3/TextFormFieldStudy.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/section1/dropdpwnbutton.dart';
import 'package:firstproject/section1/checboxStudy.dart';
import 'package:firstproject/section1/heckboxListTileStudy.dart';
import 'package:firstproject/section1/radioStudy.dart';
import 'package:firstproject/section1/radioListTileStudy.dart';
import 'package:firstproject/section1/SwitchStudy.dart';
import 'package:firstproject/section1/ListTileStudy.dart';
import 'package:firstproject/section1/CircleAvatar.dart';
import 'package:firstproject/section1/SnackBarStudy.dart';
import 'package:firstproject/section1/AlertDialogStudy.dart';
import 'package:firstproject/section1/ListviewStudy.dart';
import 'package:firstproject/section1/ListviewBuilderStudy.dart';
import 'package:firstproject/section1/ListviewSeparatorStudy.dart';
import 'package:firstproject/section1/GridViewBuilder.dart';
import 'package:firstproject/section1/ListGenerateStudy.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: TextFormFieldStudy(),
    );
  }
}





 
//  Column 
// MinAxisAlignment ,CrossAxisAlignment , MainAxisSize 
// Row 
// MinAxisAlignment ,CrossAxisAlignment , MainAxisSize 
// satck 
// like hte postions in css 
// Expanded  to make pricintg % for width an height 
// Divider like the hr 
//  indexed Stack
// show one container in the cheldren 
// wrap like the flex wrap 

// SingleChildScrollView => to make the user scroll 

// SizedBox -- spaces between the widgets 
// Center to make the wlemnt Center of the elemnt 

// +++ Buttons +++ : 
//Raisedbutton
//ElevatedButton
//ElevatedButton.icon 
// MaterialButton
// IconButton
// InkWell
//
//
// 2022/02/20
//FloatingActionButton 
//بوتتون ثابت بمكان واحد ويكون برا البودي 
// 
//====
//GestureDetector
// ثلاث انواع من الضغط 
// onTapUp , ontapDown , oneTapCancel

// statefulwidget vs statelesswidget
// statefulwidget to use set state Widget 