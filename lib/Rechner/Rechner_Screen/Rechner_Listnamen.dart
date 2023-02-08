import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RechnerKat {
  String title;
  dynamic icon;

  RechnerKat({required this.title, required this.icon});
}

List<RechnerKat> RechnerKatlist = [
  RechnerKat(
      title: 'Ordner 1',
      icon: SvgPicture.asset(
        "assets/Icons/heat.svg",
        width: 30,
        height: 30,
        color: Color.fromARGB(255, 122, 122, 122),
      )),
  RechnerKat(
      title: 'Ordner 2',
      icon: SvgPicture.asset(
        "assets/Icons/waterdrop.svg",
        width: 30,
        height: 30,
        color: Color.fromARGB(255, 122, 122, 122),
      )),
  RechnerKat(
      title: 'Ordner 3',
      icon: SvgPicture.asset(
        "assets/Icons/schall.svg",
        width: 20,
        height: 20,
        color: Color.fromARGB(255, 122, 122, 122),
      )),
];

/////////////////////////////////////////Ordner 1 Rechner/////////////////////////

class FolderCalc1_listnamen {
  String title;
  dynamic icon;

  FolderCalc1_listnamen({required this.title, required this.icon});
}

List<FolderCalc1_listnamen> FolderCalc1_listnamenlist = [
  FolderCalc1_listnamen(
      title: 'Ordner 1 Rechner',
      icon: SvgPicture.asset(
        "assets/Icons/U_Wert.svg",
        width: 27,
        height: 27,
        color: Color.fromARGB(255, 122, 122, 122),
      )),
];

/////////////////////////////////////////Ordner 2 Rechner/////////////////////////

class FolderCalc2_listnamen {
  String title;
  dynamic icon;

  FolderCalc2_listnamen({required this.title, required this.icon});
}

List<FolderCalc2_listnamen> FolderCalc2_listnamenlist = [
  FolderCalc2_listnamen(
      title: 'Ordner 2 Rechner',
      icon: SvgPicture.asset(
        "assets/Icons/heat_cal.svg",
        width: 32,
        height: 32,
        color: Color.fromARGB(255, 122, 122, 122),
      )),
];

/////////////////////////////////////////Ordner 3 Rechner/////////////////////////

class FolderCalc3_listnamen {
  String title;
  dynamic icon;

  FolderCalc3_listnamen({required this.title, required this.icon});
}

List<FolderCalc3_listnamen> FolderCalc3_listnamenlist = [
  FolderCalc3_listnamen(
      title: 'Ordner 3 Rechner',
      icon: SvgPicture.asset(
        "assets/Icons/Schallschutz.svg",
        width: 30,
        height: 30,
        color: Color.fromARGB(255, 122, 122, 122),
      )),
];
