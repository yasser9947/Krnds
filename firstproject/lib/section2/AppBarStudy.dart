import 'package:flutter/material.dart';

class AppBarStudy extends StatefulWidget {
  AppBarStudy({Key? key}) : super(key: key);

  @override
  State<AppBarStudy> createState() => _AppBarStudyState();
}

class _AppBarStudyState extends State<AppBarStudy> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.amberAccent.withOpacity(0.4),
      key: scaffoldkey,
        appBar: AppBar(
          title: Text("home page"),
          // leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => "",),
          actions: [
            IconButton(onPressed: ()=>"", icon: Icon(Icons.exit_to_app)),
            IconButton(onPressed: ()=>"", icon: Icon(Icons.alarm))

            
          ],
          elevation: 10, // الضل 
          shadowColor: Colors.red,
          backgroundColor: Colors.green,
          brightness: Brightness.light,
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(children: [
           UserAccountsDrawerHeader(accountName: Text("yasir"),
            accountEmail: Text("email") ,
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.red, child: Text("Y"),))
            , 
            ListTile(title: Text("Home Page"), leading: Icon(Icons.home),onTap: () => "", ),
            ListTile(title: Text("Help"), leading: Icon(Icons.help),onTap: () => "", ),
            ListTile(title: Text("About"), leading: Icon(Icons.question_answer),onTap: () => "", ),
            ListTile(title: Text("Logout"), leading: Icon(Icons.logout_outlined),onTap: () => "", ),
            ],),
        ),
        body: Center(child: Container(child: RaisedButton(onPressed: () {
          scaffoldkey.currentState?.openDrawer();
        },child: Text("Open Drawer"),
        ),
        )
        )
        );
  }
}