import 'package:flutter/material.dart';
class User{
  String name;
  String city;
  String image;
  String balance;
  List<String> transactions;

  User({
    required this.name,
    required this.city,
    required this.image,
    required this.balance,
    required this.transactions
});


}

var firstUser =  User(
    name: '  Edgar Schultz',
    city: 'New York',
    image: 'assets/images/man.png',
    balance: '\$2,912.56',
    transactions: ['-\$103.24','-\$90.05','-\$150.64']);

