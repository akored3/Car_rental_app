import 'package:car_rental_project/ui/map_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/dark2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    // color: Colors.blue,
                    margin: EdgeInsets.only(top: 250),
                    padding: EdgeInsets.only(right: 30),
                    alignment: Alignment.center,
                    child: Container(
                      child: Image(
                        image: AssetImage(
                          currentCar.image,
                        ),
                        width: 500,
                        height: 500,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 35),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(text: "Premium Cars."),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 35),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(text: "Enjoy the Luxury"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 35),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.outfit(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                            children: [
                              TextSpan(
                                  text:
                                  "Premium and prestige car hourly rental."),
                              TextSpan(
                                  text:
                                  "                                                          "),
                              TextSpan(
                                  text:
                                  "Experience the thrill at a lower price"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 350,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MapPage();
                                },
                              ),
                            );
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(60.0))),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          child: Text(
                            "Let's Go!",
                            style: GoogleFonts.outfit(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],

              )),//////////////////////////////////////////////////////////////////////////////
        ));
  }
}
