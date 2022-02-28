import 'package:flutter/material.dart';


class SliderStudy extends StatefulWidget {
  SliderStudy({Key? key}) : super(key: key);

  @override
  State<SliderStudy> createState() => _SliderStudyState();
}

class _SliderStudyState extends State<SliderStudy> {

  var vale= 0.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider"),
    ),
    body: Column(children: [
        Slider(
          min: 0,
          max: 100,
          value:vale ,
           onChanged:(val)=>setState(()=>vale = val) )

    ],),
    );
  }
}