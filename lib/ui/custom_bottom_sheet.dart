import 'package:car_rental_project/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sheetItemHeight = 90;
    return Container(
      margin: EdgeInsets.only(top: 400),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Colors.black, Colors.blueGrey.shade900]),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 300, top: 15),
            child: Icon(
              Icons.cancel,
              size: 25.5,
              color: Colors.blueGrey.shade100,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 250),
            child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(text: currentCar.carName),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 35, top: 10),
                child: Icon(
                  FontAwesomeIcons.batteryHalf,
                  color: Colors.white,
                  size: 16.5,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "284 Km",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 9),
                child: Icon(
                  FontAwesomeIcons.walking,
                  color: Colors.white,
                  size: 16.5,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8, top: 9),
                child: Text(
                  "4 min",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.only(left: 8,top: 9),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 200),
                  child: Image(
                    alignment: Alignment.topCenter,
                    // width: 100,
                    image: AssetImage(
                      currentCar.image,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 250,),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: "Features"),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: features(sheetItemHeight),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  //Returns the layout of the features
  features(double sheetItemHeight) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 40),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15),
            height: sheetItemHeight,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: currentCar.features.length,
                itemBuilder: (context, index) {
                  return ListItem(
                    sheetItemHeight: sheetItemHeight,
                    mapVal: currentCar.features[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}


class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key, required this.sheetItemHeight, required this.mapVal})
      : super(key: key);
  final double sheetItemHeight;
  final Map mapVal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 200,
      height: sheetItemHeight,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width:2.5,color: Colors.grey.shade200)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          mapVal.keys.elementAt(0),
          Text(
            mapVal.values.elementAt(0),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,fontSize: 15),
          )
        ],
      ),
    );
  }
}