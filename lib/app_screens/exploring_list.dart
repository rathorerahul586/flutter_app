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
    );
  }

  List<String> getListItems() {
    var item = List<String>.generate(30, (counter) => "Item $counter");
    return item;
  }

  Widget getListView() {
    var listItems = getListItems();
    var listView = ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listItems[index]),
          );
        });
    return listView;
  }
}
