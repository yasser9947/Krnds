import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:noteapp/model/WashCarService.dart';

class NewWashCarService extends StatefulWidget {
  NewWashCarService({Key? key}) : super(key: key);

  @override
  State<NewWashCarService> createState() => _NewWashCarServiceState();
}

class _NewWashCarServiceState extends State<NewWashCarService> {
  WashCarService washCarService = new WashCarService();
  final _formKey = GlobalKey<FormState>();

  addNewNote() async {
    print(washCarService);
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
       try {
      final storage = new FlutterSecureStorage();
      var token = await storage.read(key: "jwt");
      Dio dio = new Dio();
      dio.options.headers['content-Type'] = 'application/json';
      dio.options.headers["authorization"] = token;
      var url = "http://192.168.1.207:8080/api/wash-car/create";
      var response = await dio.post(url , data: jsonEncode(washCarService.toJson()));
    } catch (e) {
      print(e);
      // throw Exception("Error");
    }
      
    }
  }


    
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text("New Car Servic"),
        )),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Add new Car Wash",
                          style: TextStyle(fontSize: 30),
                          // textAlign: TextAlignVertical.center,
                        ),
                        GridView(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      MediaQuery.of(context).size.width < 500
                                          ? 1
                                          : 2,
                                  crossAxisSpacing: 10,
                                  mainAxisExtent:
                                      MediaQuery.of(context).size.height * 0.10,
                                  mainAxisSpacing: 0,
                                  childAspectRatio: 1),
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              onChanged: (value) => setState(() {
                                washCarService.carName = value;
                              }),
                              minLines: 1,
                              maxLines: 3,
                              maxLength: 30,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "car name",
                                  prefixIcon: Icon(Icons.car_rental_sharp)),
                            ),
                            TextFormField(
                              onChanged: (value) => setState(() {
                                washCarService.carPlate = value;
                              }),
                              minLines: 1,
                              maxLines: 3,
                              maxLength: 30,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "car plate",
                                  prefixIcon: Icon(Icons.palette)),
                            ),
                            TextFormField(
                              onChanged: (value) => setState(() {
                                washCarService.applicantName = value;
                              }),
                              minLines: 1,
                              maxLines: 3,
                              maxLength: 30,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "applican tName",
                                  prefixIcon: Icon(Icons.note_alt)),
                            ),
                            TextFormField(
                              onChanged: (value) => setState(() {
                                washCarService.billType = value;
                              }),
                              minLines: 1,
                              maxLines: 3,
                              maxLength: 30,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "billType",
                                  prefixIcon: Icon(Icons.palette)),
                            ),
                            TextFormField(
                              onChanged: (value) => setState(() {
                                washCarService.amount = value;
                              }),
                              minLines: 1,
                              maxLines: 3,
                              maxLength: 30,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "amount",
                                  prefixIcon: Icon(Icons.palette)),
                            ),
                            TextFormField(
                              onChanged: (value) => setState(() {
                                washCarService.phoneNumber = value;
                              }),
                              minLines: 1,
                              maxLines: 3,
                              maxLength: 30,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "phone number",
                                  prefixIcon: Icon(Icons.phone)),
                            ),
                            SizedBox(
                              width: 200,
                              child: MaterialButton(
                                  onPressed: (() => addNewNote()),
                                  color: Colors.green,
                                  child: Text("submit")),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}
