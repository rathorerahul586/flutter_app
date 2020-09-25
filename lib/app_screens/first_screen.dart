import 'dart:math';

import "package:flutter/material.dart";

class MyFlutterApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Todo List',
      home: new TodoList(),
    );
  }

  String luckyNumber() {
    var random = Random();
    int randomNumber = random.nextInt(10);

    return "\nYour Lucky No. is $randomNumber";
  }
}

class TodoList extends StatefulWidget {
  @override
  createState() => new TodoListState();
}

class TodoListState extends State<TodoList> {
  List<String> _todoItem = [];

  void _addTodoItem(String todoItem) {
    setState(() {
      int index = _todoItem.length;
      _todoItem.add(todoItem);
    });
  }

  Widget _buildTodoList() {
    // ignore: missing_return
    return new ListView.builder(itemBuilder: (context, index) {
      if (index < _todoItem.length) {
        return _buildTodoItem(_todoItem[index], index);
      }
    });
  }

  // Build a single todo item
  Widget _buildTodoItem(String todoText, int index) {
    return new ListTile(
        title: new Text(todoText),
        onTap: () => _promoteRemoveTodoItem(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Todo List'),
      ),
      body: _buildTodoList(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _pushAddTodoScreen,
        tooltip: 'Add Task',
        child: new Icon(Icons.add),
      ),
    );
  }

  void _pushAddTodoScreen() {
    // Push this page onto the stack
    Navigator.of(this.context).push(
        // MaterialPageRoute will automatically animate the screen entry, as well
        // as adding a back button to close it
        new MaterialPageRoute(builder: (context) {
      return new Scaffold(
          appBar: new AppBar(title: new Text('Add a new task')),
          body: new TextField(
            autofocus: true,
            onSubmitted: (val) {
              _addTodoItem(val);
              Navigator.pop(context); // Close the add todo screen
            },
            decoration: new InputDecoration(
                hintText: 'Enter something to do...',
                contentPadding: const EdgeInsets.all(16.0)),
          ));
    }));
  }

  void _removeTodoItem(int index){
    setState(() => _todoItem.removeAt(index));
  }

  void _promoteRemoveTodoItem(int index){
    showDialog(context: context,
      builder: (BuildContext context){
        return new AlertDialog(
          title: new Text('Mark "${_todoItem[index]}" as done?'),
          actions: <Widget>[
            new FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: new Text("CANCEL")
            ),
            new FlatButton(
                onPressed: () => {
                  _removeTodoItem(index),
                  Navigator.of(context).pop(),
                },
                child: new Text("MARK AS DONE"))
          ]

        ) ;
      }
    );
  }
}
