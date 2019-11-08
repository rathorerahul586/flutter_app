import 'dart:math';

import "package:flutter/material.dart";

class MyFlutterApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First Flutter",
      home: Scaffold(
        appBar: AppBar (
          title: (Text("Good Rahul")),
        ),
        body: Material(
          color: Colors.green,
          child: Center (
            child: Text(
              "Hello Rahul"+luckyNumber(),
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  String luckyNumber(){
    var random = Random();
    int randomNumber = random.nextInt(10);

    return "\nYour Lucky No. is $randomNumber";
  }
}