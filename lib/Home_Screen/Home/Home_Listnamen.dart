import 'package:flutter/material.dart';

class Home_Listnamen {
  String title;
  dynamic icon;

  Home_Listnamen({required this.title, required this.icon});
}

List<Home_Listnamen> Home_Listnamenlist = [
  Home_Listnamen(
    title: 'Themen',
    icon: Icon(Icons.account_balance),
  ),
  Home_Listnamen(title: 'Bibliothek', icon: Icon(Icons.chrome_reader_mode)),
  Home_Listnamen(
    title: 'Links',
    icon: Icon(Icons.storage),
  ),
];
