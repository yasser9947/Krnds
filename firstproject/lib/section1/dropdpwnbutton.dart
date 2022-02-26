import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var selectBotton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: Container(
            color: Colors.green[50],
            child: DropdownButton(
              dropdownColor: Colors.red,
              hint: Text("choose"),
              items: ["USA".toLowerCase(), "KSA", "TRE"]
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (val) {
                print(val);
                setState(() {
                  selectBotton = val.toString();
                });
              },
              value: selectBotton,
            ),
          ),
        ));
  }

  
}
