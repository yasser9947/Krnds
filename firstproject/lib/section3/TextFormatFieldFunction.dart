// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class TextFormatFieldFunction extends StatefulWidget {
  TextFormatFieldFunction({Key? key}) : super(key: key);

  @override
  State<TextFormatFieldFunction> createState() => _TextFormatFieldFunctionState();
}

class _TextFormatFieldFunctionState extends State<TextFormatFieldFunction> {

  GlobalKey<FormState> formstate = new GlobalKey<FormState> ();

    send(){
      var formdata = formstate.currentState;
      if(formdata != null && formdata.validate()){
        formdata.save();
        print("name : $name phone : $phone");
        print("Success");
      }else{
        print("Eroor ");
      }
    }

  var data = "";
  var name ;
  var phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("homepage".toUpperCase()),),
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: formstate,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextFormField(
                onSaved: (newValue) =>  name = newValue,

                onChanged: (value) =>setState(()=> data = value),
                onEditingComplete: () => print("complate "),
                validator: (v) {
                      if(v != null && v.length  > 5){

                          return "most be not moor than 5  ";
                      }
                      return null;
                },
            ),
                TextFormField(
                  onSaved: (newValue) =>  phone = newValue,
                onChanged: (value) =>setState(()=> data = value),
                onEditingComplete: () => print("complate "),
                validator: (v) {
                      if(v != null && v.length  > 5){

                          return "most be not moor than 5  ";
                      }
                      return null;
                },
            ),
            RaisedButton(onPressed:send , child: Text("submit "),)
      
            // Validtions 
        ],),
      ),


    );
  }

}