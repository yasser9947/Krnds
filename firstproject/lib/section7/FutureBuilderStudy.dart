import 'package:flutter/material.dart'; 
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

// https://jsonplaceholder.typicode.com/posts
class FutureBuilderStudy extends StatefulWidget {
  FutureBuilderStudy({Key? key}) : super(key: key);

  @override
  State<FutureBuilderStudy> createState() => _FutureBuilderStudyState();
}

class _FutureBuilderStudyState extends State<FutureBuilderStudy> {

   var data = [];

  Future getPosts () async{
    var url  = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var respons = await http.get(url);
    var responsBody = convert.jsonDecode(respons.body);

  return responsBody;
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
      appBar: AppBar(title: Text("FutureBuilderStudy"),),
      body: 
          FutureBuilder(
            future: getPosts(),
            builder: (context , snapshot ) {
              if(snapshot.hasData){
               return  ListView.builder(
               itemCount: data.length,
              itemBuilder: (contex , i)=> ListTile(title:Text(data[i]?['title']) , subtitle:Text(data[i]?['body']) ,));
              }else{
                return  Center(child: CircularProgressIndicator());
              }
            }
          )

        
      
    );
  }
}