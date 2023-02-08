import 'package:flutter/material.dart';

class LinksKat {
  String title;
  dynamic icon;

  LinksKat({required this.title, required this.icon});
}

List<LinksKat> LinksKatlist = [
  LinksKat(title: 'Links zur Buchverlägen', icon: Icon(Icons.bookmark)),
  LinksKat(title: 'Links zur Perinorm', icon: Icon(Icons.bookmark)),
];
