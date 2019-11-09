import "package:flutter/material.dart";

class MyFirstFlatter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 40.0, left: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Spice Jet",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontFamily: 'ZCOOLXiaoWei',
                      decoration: TextDecoration.none),
                )),
                Expanded(
                    child: Text(
                      "From Ludhiana to Delhi via Ambala",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'ZCOOLXiaoWei',
                          decoration: TextDecoration.none),
                    ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                      "Air India",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontFamily: 'ZCOOLXiaoWei',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none),
                    )),
                Expanded(
                    child: Text(
                      "From Delhi to Lucknow",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'ZCOOLXiaoWei',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none),
                    ))
              ],
            ),
            flightImage()
          ],
        ),
      ),
    );
  }
}

class flightImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image flightTakeOff = Image(image: assetImage, width: 300, height: 200,);
    return Container(child: flightTakeOff,);
  }

}
