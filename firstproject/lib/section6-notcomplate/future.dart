import 'package:flutter/material.dart'; 


class FutureStudy extends StatefulWidget {
  FutureStudy({Key? key}) : super(key: key);

  @override
  State<FutureStudy> createState() => _FutureStudyState();
}

class _FutureStudyState extends State<FutureStudy> {

  Future getData() async {
    print("befor the function");

    await Future.delayed(Duration(seconds: 3) , (){
      print("inside the await");
    });
    print("after the function");
  }

  @override
  void initState() {

    getData();
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future"),),
      body: Center(child: Text("lksdjhfklsdjfklea jkljhsf"),),
    );
  }
}