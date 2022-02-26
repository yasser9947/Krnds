import 'package:flutter/material.dart';

class TabBarViewStudy extends StatefulWidget {
  TabBarViewStudy({Key? key}) : super(key: key);

  @override
  State<TabBarViewStudy> createState() => _TabBarViewStudyState();
}

class _TabBarViewStudyState extends State<TabBarViewStudy> with SingleTickerProviderStateMixin {

  late TabController myController;

  @override
  void initState() {
    // TODO: implement initState
    myController = new TabController(length: 3, vsync: this , initialIndex: 1);

    super.initState();
  }



// defoalt tap controller 
  @override
  Widget build(BuildContext context) {
    return
    
    Scaffold(appBar: AppBar(
      title: Text("Homepage"),
      bottom: TabBar(
        controller: myController,
        isScrollable: false, 
        indicatorColor: Colors.red,
        indicatorWeight: 10,
        indicatorPadding: EdgeInsets.all(5),
        tabs: [
        Tab(child: Text("ice"), icon: Icon(Icons.ice_skating),),
        Tab(child: Text("heat"), icon: Icon(Icons.surfing),),
         Tab(child: Text("spring"), icon: Icon(Icons.trending_neutral),)
      ],),)
    ,
    body: TabBarView(
      controller: myController,
      children: [
      Container(child: Text("View 1 "), width: double.infinity, color: Colors.green,),
      Container(child: Text("View 2 "), width: double.infinity, color: Colors.blue,),
       Container(child: Text("View3 "), width: double.infinity, color: Colors.blue,)

    ],),
    );
    
  }
}