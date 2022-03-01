import 'package:flutter/material.dart';


class ScrollControllerStudy extends StatefulWidget {
  ScrollControllerStudy({Key? key}) : super(key: key);

  @override
  State<ScrollControllerStudy> createState() => _ScrollControllerStudyState();
}

class _ScrollControllerStudyState extends State<ScrollControllerStudy> {

  var vale= 0.00;
  late ScrollController scrollcontroller ;

  @override
  void initState() {
    // TODO: implement initState
    scrollcontroller = ScrollController();
    scrollcontroller.addListener(() {
      print(scrollcontroller.offset);
      
      print("Max : ${scrollcontroller.position.maxScrollExtent} " );
      });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ScrollControllerStudy"),
    ),
    body: ListView(
      controller: scrollcontroller,
      // scrollDirection: Axis.horizontal,
      children: [
      ...List.generate(20 , (index) => Container(child: Text("Container $index  "), color:index.isEven ? Colors.red : Colors.green,height: 100 , width: 100, margin: EdgeInsets.all(10),) )
        ,MaterialButton(onPressed:()=>scrollcontroller.jumpTo(0) , child: Text("jumb to "), color: Colors.red,)
        ,MaterialButton(onPressed:()=>scrollcontroller.animateTo(0 , duration: Duration(seconds: 1) , curve: Curves.easeIn) , child: Text("jumb to " ), color: Colors.black,)
    ],)
    );
  }
}