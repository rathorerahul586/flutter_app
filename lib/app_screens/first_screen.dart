import "package:flutter/material.dart";

class MyFirstFlatter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Text(
              "Hello World",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontFamily: "ZCOOLXiaoWei",
                  fontSize: 60.0,
                  fontWeight: FontWeight.w300),
            )),
            Expanded(
                child: Text(
              "This is long text",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontFamily: "ZCOOLXiaoWei",
                  fontSize: 60.0,
                  fontWeight: FontWeight.w300),
            )),
          ],
        ),
      ),
    );
  }
}
