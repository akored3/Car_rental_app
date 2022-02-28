import 'dart:ui';
import 'package:car_rental_project/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            margin: EdgeInsets.only(left: 25),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          actions: <Widget>[
            Container(
                margin: EdgeInsets.only(right: 25),
                child: Icon(FontAwesomeIcons.ellipsisH,color: Colors.black,)),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              Center(
                child: Image(
                  width: 100,
                  height: 100,
                  image: AssetImage(currentUser.image),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: currentUser.name),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Container(
                        // padding: EdgeInsets.only(right: 20.0),
                        margin: EdgeInsets.only(left: 150),
                        child: Icon(
                          Icons.location_pin,
                          color: Colors.grey.shade500,
                          size: 20.0,
                        ),
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.outfit(
                                color: Colors.grey.shade500,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(text: currentUser.city),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 45, left: 25, right: 25),
                // padding: EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.outfit(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: 'Payment Method'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100),
                      child: Icon(
                        FontAwesomeIcons.plus,
                        size: 15.0,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Container(
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.outfit(
                              color: Colors.grey.shade500,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: 'Add New'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //MASTERCARD
              Container(
                width: 350,
                height: 205,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [Colors.black, Colors.blueGrey.shade900])),
                child: Container(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 250),
                        child: Image(
                            image: AssetImage('assets/images/mastercard1.png')
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 220),
                        padding: EdgeInsets.only(top: 55),
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.outfit(
                                color: Colors.grey.shade500,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(text: currentUser.name.toUpperCase()),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(right: 250),
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin:EdgeInsets.only(left: 10),
                                child: Text(
                              '**** 3673',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                            ),
                            Container(
                              margin:EdgeInsets.only(left: 150),
                              child: Text(
                                currentUser.balance,
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 25, right: 25),
                // padding: EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.outfit(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(text: 'Recent'),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.outfit(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(text: ' \Transactions'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              style: GoogleFonts.outfit(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(text: '10 April, 6:39 am'),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: GoogleFonts.outfit(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(text: currentUser.transactions[0]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 300),
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.outfit(
                              color: Colors.grey.shade500,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: currentCar.carName),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              style: GoogleFonts.outfit(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(text: '8 April'),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: GoogleFonts.outfit(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(text: currentUser.transactions[1]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 300),
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.outfit(
                              color: Colors.grey.shade500,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: currentCar.carName),
                          ],
                        ),
                      ),
                    )
                  ],
                )

              ),

            ],
          ),
        ));
  }
}
