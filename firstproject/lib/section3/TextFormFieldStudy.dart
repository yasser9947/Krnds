// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class TextFormFieldStudy extends StatefulWidget {
  TextFormFieldStudy({Key? key}) : super(key: key);

  @override
  State<TextFormFieldStudy> createState() => _TextFormFieldStudyState();
}

class _TextFormFieldStudyState extends State<TextFormFieldStudy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("homepage".toUpperCase()),),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TextField(
            decoration: 
            InputDecoration(

//===============================================================================
              icon: Icon(Icons.ac_unit_rounded),
              labelText: "add your name",
              // hintText: "add the naame" ,
              // hintStyle: TextStyle(color: Colors.red , fontSize: 16),
              hintMaxLines: 2,
              // prefix 
              prefixIcon: Icon(Icons.email),
              prefix: Text("befor "),
              //suffix
              suffix: Text("end"),
              //filled
              filled: true,
              fillColor: Colors.green.shade100,

// ================================================================================

              border:OutlineInputBorder( // UnderlineInputBorder
                borderSide: BorderSide(color: Colors.pinkAccent)
              ),
              // الحالات 
              enabled: true,
              enabledBorder: OutlineInputBorder( // UnderlineInputBorder
                borderSide: BorderSide(color: Colors.red)
              ),
              disabledBorder:  UnderlineInputBorder( // UnderlineInputBorder
                borderSide: BorderSide(color: Colors.red)
              ),

              focusedBorder: OutlineInputBorder( // UnderlineInputBorder
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(20)
              ),
            ),


// ====================================================================================

            cursorColor: Colors.amber,
            keyboardType: TextInputType.number, // to mak tthe kybors numbers 
            maxLength: 20,
            obscureText: false, // to type the passworsd
            readOnly: true,
            textInputAction: TextInputAction.search, // شكل الانتر في الكيبورد
            controller: TextEditingController(text: "yaaasssseeerrr"),
          ),
      ],),


    );
  }

}