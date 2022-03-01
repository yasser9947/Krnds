import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List notes = [
    {
      "note" :"i have appoinment",
      "date" :DateTime(2020,9,7,17,30) ,
      "img" :""
    },{
      "note" :"i have appoinment",
      "date" :DateTime(2017,9,7,17,30) ,
      "img" :""
    },
    {
      "note" :"i have appoinment",
      "date" :DateTime(2010,9,7,17,30) ,
      "img" :""
    },{
      "note" :"i have appoinment",
      "date" :DateTime(2022,9,7,17,30) ,
      "img" :""
    },

  ];

  @override
  Widget build(BuildContext context) {

    double mdw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      floatingActionButton: FloatingActionButton(child: false ? Text("data") :Icon(Icons.add), onPressed: () {
        
      },),
      body: Container(child: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context , i) => ListNotes(note: notes[i], mdw:mdw) )
      ),
    );
  }
}


class ListNotes extends StatelessWidget {
  final note;
  final mdw;
  ListNotes({this.note , this.mdw});

//             width: mdw - 100,
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
           Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(5),
              child: Image.network("https://i.ytimg.com/vi/xtKjpCGP_bI/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAao93tFn-9rLxjwInkWvcZhGJMlg"))
          ),
          Expanded(
            flex: 3,
            child: ListTile(
              title: Text(note["note"]),
              trailing: IconButton(icon: Icon(Icons.edit),onPressed: () => "",),
              ),
          ),
          
        ],
      ),
    );
  }
}