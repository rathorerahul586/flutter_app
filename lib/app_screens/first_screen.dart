import "package:flutter/material.dart";

class MyFirstFlatter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
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
            flightImage(),
            bookingBtn(context),
          ],
        ),
      ),
    );
  }
  Container flightImage(){
    AssetImage assetImage = AssetImage('images/flight.png');
    Image flightTakeOff = Image(image: assetImage, width: 300, height: 200,);
    return Container(child: flightTakeOff);
  }

  Container bookingBtn(BuildContext context){
    return Container(
      width: 300.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        elevation: 6.0,
        child: Text(
          "Book Flight",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: 'ZCOOLXiaoWei'
          ),
        ),
        onPressed: (){
            bookFlight(context);
        },
      ),
    );
  }

  void bookFlight(BuildContext context){
    var alertDilog = AlertDialog(
      title: Text("Flight Booked Successgully"),
      content: Text("Have A Nice Day. Happy Journy"),
    );
    showDialog(context: context,
    builder: (BuildContext context){
      return alertDilog;
    });
  }
}
