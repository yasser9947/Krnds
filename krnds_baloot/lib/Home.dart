
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _controller = ScrollController();

  int _counter = 0;
  int team1 = 0;
  int team2 = 0;
  int team1some = 0;
  int team2some = 0;
  var team1Calc =[0];
  var team2Calc =[0];
  bool flag = false;

  void _incrementCounter() {
    team1some = team1some - team1Calc[team1Calc.length-2];
    team2some = team2some - team2Calc[team2Calc.length-2];
    team2Calc.removeAt(team2Calc.length-1);
    team2Calc.removeAt(team2Calc.length-1);
    team1Calc.removeAt(team1Calc.length-1);
    team1Calc.removeAt(team1Calc.length-1);

    setState(() {
      _counter++;
    });
  }

  onSubmit(){
    if(flag){
      team1Calc = [0];
      team2Calc = [0];
      flag =false;
    }
    team1Calc.add(team1);
    team2Calc.add(team2);
    team1some = team1some + team1;
    team2some = team2some + team2;
    team1Calc.add(team1some);
    team2Calc.add(team2some);


    _controller.animateTo(team1Calc.length * 100.0, duration:Duration(milliseconds: 1000), curve: Curves.ease);
    if(team1some > 151){
      print("team1 is won");
      team2some =0;
      team1some = 0;
      this.flag = true;
    }else if(team2some > 151){
      print("team 2 is wen");
      team2some =0;
      team1some = 0;
      this.flag = true;
    }
    setState(() {
      _counter++;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black12,title: Text("KRNDS" ,style: TextStyle(color: Colors.white ),) ,centerTitle: true, ),
      drawer: Drawer(child: ListView(
        children: [
          Container(height: 200,),
          ListTile(title: Text("نبذة عننا"), leading: Icon(Icons.info), onTap: ()=>"",),
          Divider(

            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Colors.red,),
          ListTile(title: Text("تواصل معنا"), leading: Icon(Icons.contact_phone), onTap: ()=>"",),
          Divider(

            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Colors.red,),
          ListTile(title: Text("المتجر"), leading: Icon(Icons.add_shopping_cart), onTap: ()=>"",),
          Divider(

            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Colors.red,),
        ],
      )),
      body:Container(child: ListView(
        shrinkWrap: false,
        children: [
        Container(
          width: double.infinity ,
          height: MediaQuery.of(context).size.height * 0.3,
          color: Colors.blueGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50)
                ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text("لهم" , style: TextStyle(fontSize: 30),),
                          Form(child: Container(
                            width: 150,
                            margin: EdgeInsets.all(20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:BorderRadius.circular(5.0)),
                                  hintText: '',
                                  fillColor: Colors.purpleAccent,
                                  focusColor: Colors.red
                              ),
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                                return null;
                              },

                              onChanged: (val)=> setState(() {
                                if(val == ""){
                                  team2 = 0;
                                }else{
                                  team2 = int.parse(val);
                                }
                              }),
                              validator: (String? value) {
                                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                              },
                            ),
                          ))
                        ],
                      ),
                    ),
                     VerticalDivider(
                      width: 40,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.red,
                    ),
                  Container(
                    child: Column(
                      children: [
                        Text("لنا" , style: TextStyle(fontSize: 30),),
                        Form(child: Container(
                          width: 150,
                          margin: EdgeInsets.all(20),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:BorderRadius.circular(5.0)),
                                      hintText: '',
                                      fillColor: Colors.purpleAccent,
                                focusColor: Colors.red
                                   ),
                            onChanged: (val)  {
                              if(val == ""){
                                team1 = 0;
                              }else{
                                team1 = int.parse(val);
                              }
                            },
                            onSaved: (String? value) {
                              // This optional block of code can be used to run
                              // code when the user saves the form.
                              return null;
                            },
                            validator: (String? value) {
                              return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                            },
                          ),
                        ))
                      ],
                    ),
                  )

                ],),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),

                color: Colors.black26,
                child:MaterialButton(onPressed: ()=>onSubmit() , child: Text("سجل"),padding: EdgeInsets.all(20), )
                ,)

            ],
          ),
          
        ),
        Container(
          width: MediaQuery.of(context).size.width ,
          height: MediaQuery.of(context).size.height * 0.61,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

          color: Colors.black12,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(margin: EdgeInsets.only(top: 20,left: 10),
                   child:ListView.builder(
                controller: _controller,
                itemCount: team2Calc.length,
                    itemBuilder: (_, i) => i.isOdd ?
                    Column(
                      children: [
                        ListTile(title: Text(team2Calc[i].toString()  + ' + ', style: TextStyle(fontSize: 20 ), textAlign: TextAlign.center,) ),
                        Divider(),
                        Container(child: Text("aa"), height: 1,)        ],
                    ) :ListTile(title: Text(team2Calc[i].toString() +  "   " , style: TextStyle(fontSize: 20 ), textAlign: TextAlign.center,) ),
            )
                ),
              ),
              VerticalDivider(
                width: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Colors.red,
              ),
              Expanded(
                child: Container(margin: EdgeInsets.only(top: 20,left: 10),
                  child:ListView.builder(
                controller: _controller,
                 itemCount: team1Calc.length,
                   itemBuilder: (_, i) => i.isOdd ?
                   Column(
                     children: [
                       ListTile(title: Text(team1Calc[i].toString()  + ' + ', style: TextStyle(fontSize: 20 ), textAlign: TextAlign.center,) ),
                       Divider(),
                       Container(child: Text("aa"), height: 1,)        ],
                   ) :ListTile(title: Text(team1Calc[i].toString() +  "   " , style: TextStyle(fontSize: 20 ), textAlign: TextAlign.center,) ),
                 )
              ) ,
               ),


            ],
          ),
        )

      ],),),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 32),
            child: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              backgroundColor: Colors.red,
              child: const Icon(Icons.delete_forever_outlined),
            ),
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.new_releases),
          ),
        ],
      ),
    );
  }
}