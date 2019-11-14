import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class myCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myCity();
  }
}

class _myCity extends State<myCity> {
  String myCityName = "";
  var _stateList = ['Punjab', 'Haryana', 'Bihar'];
  var _currentSelectedState = 'Punjab';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My City"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              items: _stateList.map((String dropDownMenuItems) {
                return DropdownMenuItem<String>(
                  value: dropDownMenuItems,
                  child: Text(dropDownMenuItems),
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                setState(() {
                  this._currentSelectedState = newValueSelected;
                });
              },
              value: _currentSelectedState,
            ),
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  myCityName = userInput;
                  snackBar(context, "Submitted");
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("My City Name is = $myCityName in $_currentSelectedState"),
            )
          ],
        ),
      ),
    );
  }

  void snackBar(BuildContext context, String textToShow) {
    var snackBar = SnackBar(
      content: Text(textToShow),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
