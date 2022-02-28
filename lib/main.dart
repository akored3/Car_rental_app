import 'package:car_rental_project/model/car.dart';
import 'package:car_rental_project/model/user.dart';
import 'package:flutter/material.dart';
import 'ui/home_page.dart';

void main() => runApp(HomePage());

//targeting the very first car in the carlist
var currentCar = carList.cars[0];
var currentUser = firstUser;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = "Rental app";
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
















