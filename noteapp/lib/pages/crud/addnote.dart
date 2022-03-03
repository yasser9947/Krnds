import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Note"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
                child: Column(
              children: [
                TextFormField(
                  maxLength: 30,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "title",
                      prefixIcon: Icon(Icons.title)),
                ),
                TextFormField(
                  minLines: 1,
                  maxLines: 3,
                  maxLength: 30,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "note ",
                      prefixIcon: Icon(Icons.note_alt)),
                ),
                RaisedButton(
                  onPressed: () {
                    showBottomSheete(context);
                  },
                  child: const Text(
                    "Add Image Note",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: RaisedButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                    onPressed: () {},
                    child: const Text(
                      "Add Note",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  showBottomSheete(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  "plea choose Image",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                  SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    
                  },
                  
                  child: Container(
                    width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.file_copy),
                          SizedBox(width: 20,),
                          Text(
                            "from Gallary",
                            style:
                                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                      ),
                ),
                InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.camera_rear),
                          SizedBox(width: 20,),
                          Text(
                            "From Camra",
                            style:
                                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                      ),
                ),
              ],
            ),
          );
        });
  }
}
