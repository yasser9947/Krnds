import 'package:flutter/material.dart'; 
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

// https://jsonplaceholder.typicode.com/posts
class HttpAndApiStudy extends StatefulWidget {
  HttpAndApiStudy({Key? key}) : super(key: key);

  @override
  State<HttpAndApiStudy> createState() => _HttpAndApiStudyState();
}

class _HttpAndApiStudyState extends State<HttpAndApiStudy> {

   var data = [];

  Future getPosts () async{
    var url  = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var respons = await http.get(url);
    var responsBody = convert.jsonDecode(respons.body);
    setState(() {
      data = responsBody;
    });
  }



  @override
  void initState() {
    getPosts();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HttpAndApiStudy"),),
      body: 
          Container(
            child: data.length == 0 ?  Center(child: CircularProgressIndicator()) : ListView.builder(
               itemCount: data.length,
              itemBuilder: (contex , i)=> ListTile(title:Text(data[i]?['title']) , subtitle:Text(data[i]?['body']) ,)),
          )

        
      
    );
  }
}