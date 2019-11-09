import "package:flutter/material.dart";

class ExploringList extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List View (Manual)"),
          centerTitle: true,
        ),
        body: listItems()
    );
  }
}

Widget listItems(){
  var listView  = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text("B.Tech"),
        subtitle: Text("All Branches"),
        trailing: Icon(Icons.check),
      ),

      ListTile(
        leading: Icon(Icons.book),
        title: Text("Management"),
        subtitle: Text("BBA, MBA"),
        trailing: Icon(Icons.check),
      ),

      ListTile(
        leading: Icon(Icons.local_hospital),
        title: Text("Pharmacy"),
        subtitle: Text("B.pharma, M.pharma"),
        trailing: Icon(Icons.check),
      )
    ],
  );
  return listView;
}