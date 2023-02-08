import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Quiz_Listnamen {
  String title;
  dynamic icon;

  Quiz_Listnamen({required this.title, required this.icon});
}

List<Quiz_Listnamen> Quiz_Listnamenlist = [
  Quiz_Listnamen(
      title: 'Ordner 1',
      icon: SvgPicture.asset("assets/Icons/zirkel.svg",
          width: 20, height: 20, color: Color.fromARGB(255, 122, 122, 122))),
  Quiz_Listnamen(
      title: 'Ordner 2',
      icon: SvgPicture.asset(
        "assets/Icons/heat.svg",
        width: 30,
        height: 30,
        color: Color.fromARGB(255, 122, 122, 122),
      )),
  Quiz_Listnamen(
      title: 'Ordner 3',
      icon: SvgPicture.asset(
        "assets/Icons/waterdrop.svg",
        width: 30,
        height: 30,
        color: Color.fromARGB(255, 122, 122, 122),
      )),
  Quiz_Listnamen(
      title: 'Ordner 4',
      icon: SvgPicture.asset(
        "assets/Icons/schall.svg",
        width: 20,
        height: 20,
        color: Color.fromARGB(255, 122, 122, 122),
      )),
];

//////////////////////////////////Verzeichnis Ordner 1///////////////////////////////////////////
class Q1 {
  String title;

  Q1({required this.title});
}

List<Q1> Q1list = [
  Q1(title: 'Quiz 1'),
];

//////////////////////////////////Verzeichnis Ordner 2///////////////////////////////////////////
class Q2 {
  String title;

  Q2({required this.title});
}

List<Q2> Q2list = [
  Q2(title: 'Unter-Ordner 2.1'),
  Q2(title: 'Unter-Ordner 2.2'),
  Q2(title: 'Unter-Ordner 2.3'),
];

////////////////////////////////

class Q2_1 {
  String title;

  Q2_1({required this.title});
}

List<Q2_1> Q2_1list = [
  Q2_1(title: 'Quiz 2'),
];

////////////////////////////////

class Q2_2 {
  String title;

  Q2_2({required this.title});
}

List<Q2_2> Q2_2list = [
  Q2_2(title: 'Quiz 3'),
];

////////////////////////////////

class Q2_3 {
  String title;

  Q2_3({required this.title});
}

List<Q2_3> Q2_3list = [
  Q2_3(title: 'Quiz 4'),
];

//////////////////////////////////Verzeichnis Ordner 3///////////////////////////////////////////
class Q3 {
  String title;

  Q3({required this.title});
}

List<Q3> Q3list = [
  Q3(title: 'Quiz 5'),
];

//////////////////////////////////Verzeichnis Ordner 4///////////////////////////////////////////
class Q4 {
  String title;

  Q4({required this.title});
}

List<Q4> Q4list = [
  Q4(title: 'Unter-Ordner 4.1'),
  Q4(title: 'Unter-Ordner 4.2'),
];

//////////////////////////////////

class Q4_1 {
  String title;

  Q4_1({required this.title});
}

List<Q4_1> Q4_1list = [
  Q4_1(title: 'Quiz 6'),
];

//////////////////////////////////

class Q4_2 {
  String title;

  Q4_2({required this.title});
}

List<Q4_2> Q4_2list = [
  Q4_2(title: 'Quiz 7'),
];
