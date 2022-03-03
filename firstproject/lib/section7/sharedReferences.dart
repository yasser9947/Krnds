import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesStudy extends StatefulWidget {
  SharedPreferencesStudy({Key? key}) : super(key: key);

  @override
  State<SharedPreferencesStudy> createState() => _SharedPreferencesStudyState();
}

class _SharedPreferencesStudyState extends State<SharedPreferencesStudy> {
  savePrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // prefs.setString("name", "Yasir");yasser saud almuhtrish ya le tll alr
    prefs.getString("name");
    print(prefs.getString("name"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferences"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("SharedPreferences"), onPressed: savePrefs),
      ),
    );
  }
}
