import 'package:flutter/material.dart';

class PageViewStudy extends StatefulWidget {
  PageViewStudy({Key? key}) : super(key: key);

  @override
  State<PageViewStudy> createState() => _PageViewStudyState();
}

class _PageViewStudyState extends State<PageViewStudy> {

  List pvb = [
    "https://images.unsplash.com/photo-1559583985-c80d8ad9b29f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80" , 
    "https://images.unsplash.com/photo-1502989642968-94fbdc9eace4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80" , 
    "https://images.unsplash.com/photo-1586553720331-2f15f358b291?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80" ,
    "https://images.unsplash.com/photo-1536632856133-3a3441454dd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"];


  late PageController pc;
  @override
  void initState() {
    // TODO: implement initState
    pc = new PageController(initialPage: 1 ,);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page"),
      
      ),
      body: Column(children: [
        Text("Page View " , style: TextStyle(fontSize: 30), ) ,
        // Page view 
        Container(
          padding: EdgeInsets.only(top: 20),
          height: 300,
          child: PageView(
            reverse: true,
            scrollDirection: Axis.vertical,
            onPageChanged: (value) => print(value),
            controller: pc,
            children: [
              Image.network("https://images.unsplash.com/photo-1559583985-c80d8ad9b29f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80" , fit: BoxFit.fill,),
              Image.network("https://images.unsplash.com/photo-1502989642968-94fbdc9eace4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80" , fit: BoxFit.fill,),
              Image.network("https://images.unsplash.com/photo-1586553720331-2f15f358b291?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80" , fit: BoxFit.fill,),
              Image.network("https://images.unsplash.com/photo-1536632856133-3a3441454dd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80" , fit: BoxFit.fill,),
              
            ],
          ),
        ),
        
        Divider(thickness: 3, height: 50,),
        //  Page view Builder 
        Text("Page View Builder" , style: TextStyle(fontSize: 30), ) ,

        Container(
          height: 300,
          child: PageView.builder(
            itemCount: pvb.length,
            itemBuilder: (context , index){

            return Image.network(pvb[index] ,fit: BoxFit.fill,);
          } ),
        )



      ],),
    );
  }
}