import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var name = "";

  @override
  void initState() {
    super.initState();
    getInformation().then((value) => print('Async done'));
  }

  Future getInformation() async {
    try {
      final storage = new FlutterSecureStorage();
      var token = await storage.read(key: "jwt");
      Dio dio = new Dio();
      dio.options.headers['content-Type'] = 'application/json';
      dio.options.headers["authorization"] = token;
      var url = "http://192.168.1.207:8080/api/store/1";
      var response = await dio.get(url);
      this.name = response.data["name"];
      print(response.data);
    } catch (e) {
      //throw Exception("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    double mdw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Homepage")),
        actions: [
          IconButton(
              onPressed: () async {
                final storage = new FlutterSecureStorage();
                await storage.delete(key: "jwt");
                Navigator.of(context).pushReplacementNamed("login");
              },
              icon: Icon(Icons.logout))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: false ? Text("data") : Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed("add_wash_service");
        },
      ),
      body: Container(
          padding: EdgeInsets.all(50),
          child: Center(
            child: FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 0.8,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        MediaQuery.of(context).size.width < 500 ? 1 : 2,
                    crossAxisSpacing: 10,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.35,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1),
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed("all_wash_service_user"),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text("see all wash servcie")),
                          Icon(Icons.local_car_wash)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed("add_new_wash_service"),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text("add new car service")),
                          Icon(Icons.add)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Center(child: Text("see all wash servcie")),
                  ),
                  Card(
                    child: Center(child: Text("see all wash servcie")),
                  )
                ],
              ),
            ),
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
