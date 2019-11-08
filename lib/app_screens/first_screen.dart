import 'dart:ui' as prefix0;

import "package:flutter/material.dart";

class MyFirstFlatter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.grey,
        width: 200.0,
        height: 200.0,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.only(right: 30),
        child: (
            Text("Hello",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontFamily: 'RobotoCondensed',
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300
                ),)
        ),
      ),
    );
  }
}