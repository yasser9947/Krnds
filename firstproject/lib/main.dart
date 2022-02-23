// import 'dart:async';
// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:firstproject/dropdpwnbutton.dart';
import 'package:firstproject/checboxStudy.dart';
import 'package:firstproject/heckboxListTileStudy.dart';
import 'package:firstproject/radioStudy.dart';
import 'package:firstproject/radioListTileStudy.dart';
import 'package:firstproject/SwitchStudy.dart';
import 'package:firstproject/ListTileStudy.dart';
import 'package:firstproject/CircleAvatar.dart';
import 'package:firstproject/SnackBarStudy.dart';
import 'package:firstproject/AlertDialogStudy.dart';
import 'package:firstproject/ListviewStudy.dart';
import 'package:firstproject/ListviewBuilderStudy.dart';
import 'package:firstproject/ListviewSeparatorStudy.dart';
import 'package:firstproject/GridViewBuilder.dart';
import 'package:firstproject/ListGenerateStudy.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ListGenerateStudy(),
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