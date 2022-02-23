// import 'dart:async';
// import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
    );
  }
}

 class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build5
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          height: double.infinity,
            width: double.infinity,
                child: Stack(
                  alignment: Alignment.center  ,
                  children:[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                    Container(width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black , width: 2),
                         color:Colors.blue,
                      ),
                      height: 30,
                      alignment: Alignment.center
                      ,margin: EdgeInsets.only(left: 30,right: 30) ,
                       child:ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              
                            ),
                         onPressed: (){print("up");}, child: Text("Areen"),) ,
                       ) ,
                      Container(
                        
                         margin: EdgeInsets.only(left: 30,right: 30,top: 20) ,
                        // ignore: prefer_const_constructors
                        child:Text("Atrrn the best girl everAtrrn the best girl everAtrrn the best girl everAtrrn the best girl everAtrrn the best girl everAtrrn the best girl everAtrrn the best girl everAtrrn the best girl everAtrrn the best girl everAtrrn the best girl everAtrrn the best girl everAtrrn the best ", textAlign: TextAlign.center )  ,
                      ) ,
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20 , horizontal: 20),
                          decoration: BoxDecoration(border:Border.all( color: Colors.black , width: 1)),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              
                              children: [
                                Row(
                                  children: [
                                     Icon(Icons.star_rate,color: Colors.yellow , size: 20.0,),
                                     Icon(Icons.star_rate,color: Colors.yellow , size: 20.0,),
                                     Icon(Icons.star_rate,color: Colors.yellow , size: 20.0,),
                                     Icon(Icons.star_rate, size: 20.0,),
                                     Icon(Icons.star_rate, size: 20.0,),
                                  ],
                                ),
                                
                                Text("17 review")
                              ],
                            ) ,
                           Container(
                          margin: EdgeInsets.symmetric(vertical: 20 , horizontal: 20),
                          child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    // ignore: prefer_const_literals_to_create_immutables
                                    Column( children: [
                                      Icon(Icons.food_bank ),
                                      Text("Feed"),
                                      Text("2 - 2")
                                    ],),
                                    Column( children: [
                                      Icon(Icons.food_bank ),
                                      Text("Feed"),
                                      Text("2 - 2")
                                    ],),
                                      Column( children: [
                                      Icon(Icons.food_bank ),
                                      Text("Feed"),
                                      Text("2 - 2")
                                    ],),
                                    
                                  ],
                                ))
                        ],),)
                        ],
                    )
                  ]
                ),
           )
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