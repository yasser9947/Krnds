import 'package:flutter/material.dart';


class ListviewStudy extends StatefulWidget {
  const ListviewStudy({ Key? key }) : super(key: key);

  @override
  _ListviewStudyState createState() => _ListviewStudyState();
}

class _ListviewStudyState extends State<ListviewStudy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(), 
            children: [
              Text("waale"),
              Container(child: Text("yasir"),color: Colors.yellowAccent, height: 200, width: 100, margin: EdgeInsets.all(10),),
                Container(child: Text("yasir"),color: Colors.blue, height: 200, width: 100, margin: EdgeInsets.all(10),),
                  Container(child: Text("yasir"),color: Colors.green, height: 200, width: 100, margin: EdgeInsets.all(10),),
                    Container(child: Text("yasir"),color: Colors.pink, height: 200, width: 100, margin: EdgeInsets.all(10),)
            ],
          ),
        )
    );
  }
}