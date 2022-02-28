import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Car {
  String carName ;
  String image;
  double price ;
  List<Map<Icon, String>> features = [];


Car({
  //Constructor and initializer
  required this.carName,
  required this.image,
  required this.price,
  required this.features,
});
}

//creating a class carlist that takes a list of cars,in case of adding other types of cars
class CarList{
  List<Car> cars;

  CarList({
    required this.cars
});
}

CarList carList = CarList(cars: [
  Car(carName: 'Ferrari ',
      image: 'assets/images/ferrari1.png',
      price: 13.75,
      features:[
        {Icon(FontAwesomeIcons.snowflake,size: 20): 'Climate Control'},
        {Icon(FontAwesomeIcons.tachometerAlt,size: 20): 'Acceleration'},
        {Icon(FontAwesomeIcons.carBattery,size: 20): 'Electric'}
      ])
]);