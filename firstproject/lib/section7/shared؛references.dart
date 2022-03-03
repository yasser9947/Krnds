import 'package:flutter/material.dart'; 


class SharedPreferences extends StatefulWidget {
  SharedPreferences({Key? key}) : super(key: key);

  @override
  State<SharedPreferences> createState() => _SharedPreferencesState();
}

class _SharedPreferencesState extends State<SharedPreferences> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future"),),
      body: Center(child:RaisedButton(child: Text("Show Date time"), onPressed:  (){
          print(DateTime.now().weekday);
          print(DateTime.now().add(Duration(days: 10)));
          print(DateTime.now().subtract(Duration(days: 10)));
          print(DateTime.now().isAfter(DateTime.now().subtract(Duration(days: 10))));
        })
      ,),
    );
  }
}