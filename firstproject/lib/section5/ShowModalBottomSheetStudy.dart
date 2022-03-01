import 'package:flutter/material.dart';


class ShowModalBottomSheetStudy extends StatefulWidget {
  ShowModalBottomSheetStudy({Key? key}) : super(key: key);

  @override
  State<ShowModalBottomSheetStudy> createState() => _ShowModalBottomSheetStudyState();
}

class _ShowModalBottomSheetStudyState extends State<ShowModalBottomSheetStudy> {

  var vale= 0.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider"),
    ),
    body:Center(child:
     MaterialButton(child: Text("show model Bottom sheet"),
     onPressed: () => showModalBottomSheet(context: context, builder: (context) => Container(child: Text("bootm shete"), height: 100,))
     
     ,),)
    );
  }
}