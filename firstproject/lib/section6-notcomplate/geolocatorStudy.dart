import 'package:flutter/material.dart'; 


class GeolocatorStudy extends StatefulWidget {
  GeolocatorStudy({Key? key}) : super(key: key);

  @override
  State<GeolocatorStudy> createState() => _GeolocatorStudyState();
}

class _GeolocatorStudyState extends State<GeolocatorStudy> {

  Future getData() async {
    print("befor the function");

    await Future.delayed(Duration(seconds: 3) , (){
      print("inside ssss await");
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