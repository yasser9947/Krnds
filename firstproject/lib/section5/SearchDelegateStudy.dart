import 'package:flutter/material.dart';


class SearchDelegateStudy extends StatefulWidget {
  SearchDelegateStudy({Key? key}) : super(key: key);

  @override
  State<SearchDelegateStudy> createState() => _SearchDelegateStudyState();
}

class _SearchDelegateStudyState extends State<SearchDelegateStudy> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SearchDelegateStudy" ,),
      actions: [
        IconButton(onPressed: ()=>{
          showSearch(context: context, delegate: DataSearch())
        }, icon: Icon(Icons.search))
      ],
    ),
    body: Center(child: Text("yasir" , style: TextStyle(color: Colors.black38 , fontSize: 50),),)
    );
  }
}


// to create serch 

class DataSearch extends SearchDelegate{

  List names = [
    "Yasir" , "Areen" , "Ali" , "Khalid"
  ];


  @override
  List<Widget>? buildActions(BuildContext context) {

    return [
      IconButton(onPressed: ()=>query ="", icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {

    return IconButton(onPressed: ()=>close(context, null), icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
     return ListView(children: [
       ...List.generate(20, (index) => ListTile(title:Text("list view "),))
     ],);
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    List filterNames = names.where((element) => element.toLowerCase().startsWith(query.toLowerCase())).toList();

     return ListView.builder(
       itemCount: filterNames.length,
       itemBuilder: (context , i) {
          return InkWell(
            onTap: (){
              query = query =="" ? names[i] : filterNames[i];
              showResults(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text("${filterNames[i]}"),
            ),
          );
     });
  }
  
}
