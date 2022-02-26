import 'package:flutter/material.dart';

class ListTileStudy extends StatefulWidget {
  ListTileStudy({Key? key}) : super(key: key);

  @override
  State<ListTileStudy> createState() => _ListTileStudyState();
}

class _ListTileStudyState extends State<ListTileStudy> {
  var usa = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
         child: Container(padding: EdgeInsets.all(10), child: Column(
           children : [
            ...listOfListTile()
           ]
         )
        )));
  }

  List<Container> listOfListTile () => ["samsung" , "iphone" , "huwawi"].map((e) => Container(
    margin: EdgeInsets.all(2),
     color: Colors.amber, child: ListTile(
                subtitle: Text(e),
                title: Text("20 Ultra "),
                leading: Icon(Icons.phone_android),
                trailing: Text("prics 200sr"),
                onTap: () => {
                  print("nothing")
                },
             ),)).toList();

}