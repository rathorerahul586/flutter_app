import "package:flutter/material.dart";

class ExploringList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View (Manual)"),
        centerTitle: true,
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        tooltip: "Press me",
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: (){
          snackBar(context, "Fab Clicked");
        },
      ),
    );
  }

  List<String> getListItems() {
    var item = List<String>.generate(30, (counter) => "Item $counter");
    return item;
  }

  void snackBar(BuildContext context, String text){
    var snackbar = SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: (){
          snackBar(context, "Action UNDO");
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackbar);
  }

  Widget getListView() {
    var listItems = getListItems();
    var listView = ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listItems[index]),
            onTap: (){
              snackBar(context, listItems[index]);
            },
          );
        });
    return listView;
  }
}
