import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      "note": "i have appoinment",
      "date": DateTime(2020, 9, 7, 17, 30),
      "img": "" ,
      "id":"1"
    },
    {
      "note": "i have appoinment",
      "date": DateTime(2017, 9, 7, 17, 30),
      "img": "",
      "id":"3"
    },
    {
      "note": "i have appoinment",
      "date": DateTime(2010, 9, 7, 17, 30),
      "img": "",
      "id":"2"
    },
    {
      "note": "i have appoinment",
      "date": DateTime(2022, 9, 7, 17, 30),
      "img": "",
      "id":"4"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double mdw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: false ? Text("data") : Icon(Icons.add),
        onPressed: () {
           Navigator.of(context).pushNamed("addnotes");
        },
      ),
      body: Container(
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, i) => Dismissible(
                direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.delete, color: Colors.white),
                          Text('Move to trash',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  key: UniqueKey(),
                  onDismissed: (direction) => setState(()=> notes.removeAt(i)) ,
                  child: ListNotes(note: notes[i], mdw: mdw)
                  )
                  )),
    );
  }
}

class ListNotes extends StatelessWidget {
  final note;
  final mdw;
  ListNotes({this.note, this.mdw});

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
                  child: Image.network(
                      "https://i.ytimg.com/vi/xtKjpCGP_bI/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAao93tFn-9rLxjwInkWvcZhGJMlg"))),
          Expanded(
            flex: 3,
            child: ListTile(
              title: Text("Title "),
              subtitle: Text(note["note"]),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () => "",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
