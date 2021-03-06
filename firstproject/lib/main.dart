// import 'dart:async';
// import 'dart:ffi';

import 'package:firstproject/section2/AppBarStudy.dart';
import 'package:firstproject/section2/BottomNavigationBarStudy.dart';
import 'package:firstproject/section2/PageViewStudy.dart';
import 'package:firstproject/section2/TabBarViewStudy.dart';
import 'package:firstproject/section3/TextFormFieldStudy.dart';
import 'package:firstproject/section3/TextFormatFieldFunction.dart';
import 'package:firstproject/section4/one.dart';
import 'package:firstproject/section4/three.dart';
import 'package:firstproject/section4/tow.dart';
import 'package:firstproject/section4/tranPage.dart';
import 'package:firstproject/section5/ScrollControllerStudy.dart';
import 'package:firstproject/section5/SearchDelegateStudy.dart';
import 'package:firstproject/section5/ShowModalBottomSheetStudy.dart';
import 'package:firstproject/section5/SliderStudy.dart';
import 'package:firstproject/section7/DateTimeStudy.dart';
import 'package:firstproject/section7/HttpAndApi.dart';
import 'package:firstproject/section7/imagePicker.dart';
import 'package:firstproject/section7/jiffyStudy.dart';
import 'package:firstproject/section7/sharedReferences.dart';
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
      home: SharedPreferencesStudy(),
      debugShowCheckedModeBanner: false,
      routes: {
        "one" : (context)=> One(), // Navigator
        "tow" : (context)=> Tow(), // Navigator pushReplacementNamed And pushReplacement
        "three" : (context)=> Three(),
      } ,

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
//???????????? ???????? ?????????? ???????? ?????????? ?????? ???????????? 
// 
//====
//GestureDetector
// ???????? ?????????? ???? ?????????? 
// onTapUp , ontapDown , oneTapCancel

// statefulwidget vs statelesswidget
// statefulwidget to use set state Widget 