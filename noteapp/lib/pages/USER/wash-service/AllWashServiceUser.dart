import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:noteapp/model/WashCarService.dart';

class AllWashServiceUser extends StatefulWidget {
  AllWashServiceUser({Key? key}) : super(key: key);

  @override
  State<AllWashServiceUser> createState() => _AllWashServiceUserState();
}

class _AllWashServiceUserState extends State<AllWashServiceUser> {
  List<dynamic> washCarServices = [];

  @override
  void initState() {
    getAllWashCarServices().then((value) => print('Async done'));
    super.initState();
  }

  Future getAllWashCarServices() async {
    try {
      final storage = new FlutterSecureStorage();
      var token = await storage.read(key: "jwt");
      Dio dio = new Dio();
      dio.options.headers['content-Type'] = 'application/json';
      dio.options.headers["authorization"] = token;
      var url = "http://192.168.1.207:8080/api/wash-car/all-by-store";
      var response = await dio.get(url);
      setState(() {
        washCarServices = response.data as List<dynamic>;
      });
    } catch (e) {
      print(e);
      // throw Exception("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("All Wash Cars"),
      )),
      drawer: Drawer(),
      body: Container(
          margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
          width: MediaQuery.of(context).size.width * 0.9,
          //color: Colors.amberAccent,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "All car wash",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              ...getListTile()
            ],
          )),
    );
  }

  List<Widget> getListTile() => washCarServices
      .map((e) => Container(
            margin: EdgeInsets.all(2),
            color: Color.fromARGB(255, 255, 255, 255),
            child: ListTile(
              title: Text(e["carName"] + " | " + e["carPlate"]),
              leading: Icon(Icons.car_rental_outlined),
              onTap: () => "",
              selectedColor: Colors.green,
              subtitle: Text(e["create_date"]),
              trailing: Icon(Icons.arrow_right),
              selected: true,
            ),
          ))
      .toList();
}
