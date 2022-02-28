import 'package:car_rental_project/ui/map_layout.dart';
import 'package:car_rental_project/ui/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

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
                icon: Icon(Icons.arrow_back_rounded,color: Colors.black,size: 30,), onPressed: (){
                  Navigator.pop(context);
              },
              ),
            ),
            actions: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 25),
                child: IconButton(
                  icon: Icon(FontAwesomeIcons.slidersH,color: Colors.black,size: 25),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return PaymentPage();
                        },
                      ),
                    );
                  },
                )
              )
            ],
          ),
      //Displays the map and Bottom sheet
      body:  MapLayoutStarts(),
    );
  }
}




