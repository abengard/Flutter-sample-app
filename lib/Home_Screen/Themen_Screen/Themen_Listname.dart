import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Themen_Listnamen {
  String title;
  dynamic icon;
  final today =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  final aDate = DateTime(2020, 06, 01);

  Themen_Listnamen({required this.title, required this.icon});
}

List<Themen_Listnamen> Themen_Listnamenlist = [
  Themen_Listnamen(
      title: 'Ordner 1',
      icon: SvgPicture.asset("assets/Icons/zirkel.svg",
          width: 20, height: 20, color: Color.fromARGB(255, 122, 122, 122))),
  Themen_Listnamen(
      title: 'Ordner 2',
      icon: SvgPicture.asset(
        "assets/Icons/heat.svg",
        width: 30,
        height: 30,
        color: Color.fromARGB(255, 122, 122, 122),
      )),
  Themen_Listnamen(
      title: 'Ordner 3',
      icon: SvgPicture.asset("assets/Icons/waterdrop.svg",
          width: 30, height: 30, color: Color.fromARGB(255, 122, 122, 122))),
  Themen_Listnamen(
      title: 'Ordner 4',
      icon: SvgPicture.asset("assets/Icons/schall.svg",
          width: 20, height: 20, color: Color.fromARGB(255, 122, 122, 122))),
];

//////////////////////////////////Ordner 1///////////////////////////////////////////
class O1 {
  String title;

  O1({required this.title});
}

List<O1> O1list = [
  O1(title: 'Vorlesung 1'),
  O1(title: 'Vorlesung 2'),
];

//////////////////////////////////Ordner 2 Unter-Ordner///////////////////////////////////////////

class O2 {
  String title;

  O2({required this.title});
}

List<O2> O2list = [
  O2(title: 'Unter-Ordner 2.1'),
  O2(title: 'Unter-Ordner 2.2'),
  O2(title: 'Unter-Ordner 2.3'),
];

//////////////////////////////////Ordner 4 Unter-Ordner///////////////////////////////////////////

class O4 {
  String title;

  O4({required this.title});
}

List<O4> O4list = [
  O4(title: 'Unter-Ordner 4.1'),
  O4(title: 'Unter-Ordner 4.2'),
];

//////////////////////////////////OA Vorlesung und Hausaufgaben///////////////////////////////////////////

class OA {
  String title;

  OA({required this.title});
}

List<OA> OAlist = [
  OA(title: 'Vorlesung'),
  OA(title: 'Hausaufgaben'),
];

//////////////////////////////////OAV Vorlesung (PDF-Namen)///////////////////////////////////////////

class OAV {
  String title;

  OAV({required this.title});
}

List<OAV> OAVlist = [
  OAV(title: 'Vorlesung 3'),
  OAV(title: 'Vorlesung 4'),
  OAV(title: 'Vorlesung 5'),
  OAV(title: 'Vorlesung 6'),
  OAV(title: 'Vorlesung 7'),
  OAV(title: 'Vorlesung 8'),
];

//////////////////////////////////OVU Hausaufgaben (PDF-Namen)///////////////////////////////////////////

class OAU {
  String title;

  OAU({required this.title});
}

List<OAU> OAUlist = [
  OAU(title: 'Hausaufgabe 1'),
  OAU(title: 'Hausaufgabe 2'),
  OAU(title: 'Hausaufgabe 3'),
  OAU(title: 'Hausaufgabe 4'),
];
