import 'dart:ui' as prefix0;

import "package:flutter/material.dart";

class MyFirstFlatter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        alignment: Alignment.center,
        child: (
            Text("Hello",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontFamily: "ZCOOLXiaoWei",
                  fontSize: 60.0,
                  fontWeight: FontWeight.w300
                ),)
        ),
      ),
    );
  }
}