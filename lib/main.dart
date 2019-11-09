import "package:flutter/material.dart";
import 'package:flutter_app/app_screens/first_screen.dart';

import 'app_screens/exploring_list.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring Widgets",
      home: Scaffold(
        body: ExploringList(),
      ),
    )
  );
}
