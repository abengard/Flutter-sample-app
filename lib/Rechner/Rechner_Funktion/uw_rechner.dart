import 'package:sample_app/widgets.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class UW_Rechner extends StatefulWidget {
  final Datasheet1;
  final Datasheet2;
  final Datasheet3;
  final Datasheet4;
  final Datasheet5;
  final Datasheet6;
  final Datasheet7;
  final Datasheet8;
  final Datasheet9;

  UW_Rechner({
    Key? key,
    required this.Datasheet1,
    required this.Datasheet2,
    required this.Datasheet3,
    required this.Datasheet4,
    required this.Datasheet5,
    required this.Datasheet6,
    required this.Datasheet7,
    required this.Datasheet8,
    required this.Datasheet9,
  }) : super(key: key);

  @override
  State<UW_Rechner> createState() => _UW_RechnerState(
      Datasheet1,
      Datasheet2,
      Datasheet3,
      Datasheet4,
      Datasheet5,
      Datasheet6,
      Datasheet7,
      Datasheet8,
      Datasheet9);
}

class _UW_RechnerState extends State<UW_Rechner> {
  final Datasheet1;
  final Datasheet2;
  final Datasheet3;
  final Datasheet4;
  final Datasheet5;
  final Datasheet6;
  final Datasheet7;
  final Datasheet8;
  final Datasheet9;

  _UW_RechnerState(
      this.Datasheet1,
      this.Datasheet2,
      this.Datasheet3,
      this.Datasheet4,
      this.Datasheet5,
      this.Datasheet6,
      this.Datasheet7,
      this.Datasheet8,
      this.Datasheet9);

  String dropdown1 = "-";
  String dropdown2 = "-";

  static const List<String> Bauteilauswahl = <String>[
    'Wand',
    'Decke oder Flachdach',
    'Schrägdach',
  ];

  static const List<String> AnzahlSchichten = <String>[
    '3',
    '4',
    '5',
    '6',
  ];

  bool visibledp4 = false;
  bool visibledp5 = false;
  bool visibledp6 = false;

  visibileDp(String dropdown2) {
    if (dropdown2 == "3") {
      visibledp4 = false;
      visibledp5 = false;
      visibledp6 = false;
      bautyp1 = null;
      bautyp2 = null;
      bautyp3 = null;
      bautyp4 = null;
      bautyp5 = null;
      bautyp6 = null;
      baustoff1 = null;
      baustoff2 = null;
      baustoff3 = null;
      baustoff4 = null;
      baustoff5 = null;
      baustoff6 = null;
      Dicke1.text = "";
      Dicke2.text = "";
      Dicke3.text = "";
      Dicke4.text = "";
      Dicke5.text = "";
      Dicke6.text = "";
      data1 = [];
      data2 = [];
      data3 = [];
      data4 = [];
      data5 = [];
      data6 = [];
      _baudicke1 = false;
      _baudicke2 = false;
      _baudicke3 = false;
      _baudicke4 = false;
      _baudicke5 = false;
      _baudicke6 = false;

      _visibleRu1 = false;
      _visibleRu2 = false;
      _visibleRu3 = false;
      _visibleRu4 = false;
      _visibleRu5 = false;
      _visibleRu6 = false;
      _Ru1.text = "";
      _Ru2.text = "";
      _Ru3.text = "";
      _Ru4.text = "";
      _Ru5.text = "";
      _Ru6.text = "";
      _visibleRv1 = false;
      _visibleRv2 = false;
      _visibleRv3 = false;
      _visibleRv4 = false;
      _visibleRv5 = false;
      _visibleRv6 = false;
      _Rv1.text = "";
      _Rv2.text = "";
      _Rv3.text = "";
      _Rv4.text = "";
      _Rv5.text = "";
      _Rv6.text = "";
      _A1.text = "";
      _A2.text = "";
      _A3.text = "";
      _A4.text = "";
      _A5.text = "";
      _A6.text = "";
      _visibletable = false;
    }
    if (dropdown2 == "4") {
      visibledp4 = true;
      visibledp5 = false;
      visibledp6 = false;
      bautyp1 = null;
      bautyp2 = null;
      bautyp3 = null;
      bautyp4 = null;
      bautyp5 = null;
      bautyp6 = null;
      baustoff1 = null;
      baustoff2 = null;
      baustoff3 = null;
      baustoff4 = null;
      baustoff5 = null;
      baustoff6 = null;
      Dicke1.text = "";
      Dicke2.text = "";
      Dicke3.text = "";
      Dicke4.text = "";
      Dicke5.text = "";
      Dicke6.text = "";
      data1 = [];
      data2 = [];
      data3 = [];
      data4 = [];
      data5 = [];
      data6 = [];
      _baudicke1 = false;
      _baudicke2 = false;
      _baudicke3 = false;
      _baudicke4 = false;
      _baudicke5 = false;
      _baudicke6 = false;

      _visibleRu1 = false;
      _visibleRu2 = false;
      _visibleRu3 = false;
      _visibleRu4 = false;
      _visibleRu5 = false;
      _visibleRu6 = false;
      _Ru1.text = "";
      _Ru2.text = "";
      _Ru3.text = "";
      _Ru4.text = "";
      _Ru5.text = "";
      _Ru6.text = "";
      _visibleRv1 = false;
      _visibleRv2 = false;
      _visibleRv3 = false;
      _visibleRv4 = false;
      _visibleRv5 = false;
      _visibleRv6 = false;
      _Rv1.text = "";
      _Rv2.text = "";
      _Rv3.text = "";
      _Rv4.text = "";
      _Rv5.text = "";
      _Rv6.text = "";
      _A1.text = "";
      _A2.text = "";
      _A3.text = "";
      _A4.text = "";
      _A5.text = "";
      _A6.text = "";
      _visibletable = false;
    }
    if (dropdown2 == "5") {
      visibledp4 = true;
      visibledp5 = true;
      visibledp6 = false;
      bautyp1 = null;
      bautyp2 = null;
      bautyp3 = null;
      bautyp4 = null;
      bautyp5 = null;
      bautyp6 = null;
      baustoff1 = null;
      baustoff2 = null;
      baustoff3 = null;
      baustoff4 = null;
      baustoff5 = null;
      baustoff6 = null;
      Dicke1.text = "";
      Dicke2.text = "";
      Dicke3.text = "";
      Dicke4.text = "";
      Dicke5.text = "";
      Dicke6.text = "";
      data1 = [];
      data2 = [];
      data3 = [];
      data4 = [];
      data5 = [];
      data6 = [];
      _baudicke1 = false;
      _baudicke2 = false;
      _baudicke3 = false;
      _baudicke4 = false;
      _baudicke5 = false;
      _baudicke6 = false;

      _visibleRu1 = false;
      _visibleRu2 = false;
      _visibleRu3 = false;
      _visibleRu4 = false;
      _visibleRu5 = false;
      _visibleRu6 = false;
      _Ru1.text = "";
      _Ru2.text = "";
      _Ru3.text = "";
      _Ru4.text = "";
      _Ru5.text = "";
      _Ru6.text = "";
      _visibleRv1 = false;
      _visibleRv2 = false;
      _visibleRv3 = false;
      _visibleRv4 = false;
      _visibleRv5 = false;
      _visibleRv6 = false;
      _Rv1.text = "";
      _Rv2.text = "";
      _Rv3.text = "";
      _Rv4.text = "";
      _Rv5.text = "";
      _Rv6.text = "";
      _A1.text = "";
      _A2.text = "";
      _A3.text = "";
      _A4.text = "";
      _A5.text = "";
      _A6.text = "";
      _visibletable = false;
    }
    if (dropdown2 == "6") {
      visibledp4 = true;
      visibledp5 = true;
      visibledp6 = true;
      bautyp1 = null;
      bautyp2 = null;
      bautyp3 = null;
      bautyp4 = null;
      bautyp5 = null;
      bautyp6 = null;
      baustoff1 = null;
      baustoff2 = null;
      baustoff3 = null;
      baustoff4 = null;
      baustoff5 = null;
      baustoff6 = null;
      Dicke1.text = "";
      Dicke2.text = "";
      Dicke3.text = "";
      Dicke4.text = "";
      Dicke5.text = "";
      Dicke6.text = "";
      data1 = [];
      data2 = [];
      data3 = [];
      data4 = [];
      data5 = [];
      data6 = [];
      _baudicke1 = false;
      _baudicke2 = false;
      _baudicke3 = false;
      _baudicke4 = false;
      _baudicke5 = false;
      _baudicke6 = false;

      _visibleRu1 = false;
      _visibleRu2 = false;
      _visibleRu3 = false;
      _visibleRu4 = false;
      _visibleRu5 = false;
      _visibleRu6 = false;
      _Ru1.text = "";
      _Ru2.text = "";
      _Ru3.text = "";
      _Ru4.text = "";
      _Ru5.text = "";
      _Ru6.text = "";
      _visibleRv1 = false;
      _visibleRv2 = false;
      _visibleRv3 = false;
      _visibleRv4 = false;
      _visibleRv5 = false;
      _visibleRv6 = false;
      _Rv1.text = "";
      _Rv2.text = "";
      _Rv3.text = "";
      _Rv4.text = "";
      _Rv5.text = "";
      _Rv6.text = "";
      _A1.text = "";
      _A2.text = "";
      _A3.text = "";
      _A4.text = "";
      _A5.text = "";
      _A6.text = "";
      _visibletable = false;
    }
  }

  String _imagechange = "assets/Schichtdarstellung/Rahmen.png";
  double Boxheight = 300;
  double Boxwidth = 300;

  void Bildchange(String dropdown1, String dropdown2) {
    if (dropdown1 == "Wand" && dropdown2 == "3") {
      _imagechange = "assets/Schichtdarstellung/Wand_3.png";
      Boxheight = 300;
      Boxwidth = 350;
    }
    if (dropdown1 == "Wand" && dropdown2 == "4") {
      _imagechange = "assets/Schichtdarstellung/Wand_4.png";
      Boxheight = 300;
      Boxwidth = 350;
    }
    if (dropdown1 == "Wand" && dropdown2 == "5") {
      _imagechange = "assets/Schichtdarstellung/Wand_5.png";
      Boxheight = 300;
      Boxwidth = 350;
    }
    if (dropdown1 == "Wand" && dropdown2 == "6") {
      _imagechange = "assets/Schichtdarstellung/Wand_6.png";
      Boxheight = 300;
      Boxwidth = 350;
    }
    if (dropdown1 == "Decke oder Flachdecke" && dropdown2 == "3") {
      _imagechange = "assets/Schichtdarstellung/Decke_3.png";
      Boxheight = 150;
      Boxwidth = 450;
    }
    if (dropdown1 == "Decke oder Flachdecke" && dropdown2 == "4") {
      _imagechange = "assets/Schichtdarstellung/Decke_4.png";
      Boxheight = 150;
      Boxwidth = 450;
    }
    if (dropdown1 == "Decke oder Flachdecke" && dropdown2 == "5") {
      _imagechange = "assets/Schichtdarstellung/Decke_5.png";
      Boxheight = 200;
      Boxwidth = 450;
    }
    if (dropdown1 == "Decke oder Flachdecke" && dropdown2 == "6") {
      _imagechange = "assets/Schichtdarstellung/Decke_6.png";
      Boxheight = 250;
      Boxwidth = 450;
    }
    if (dropdown1 == "Schrägdach" && dropdown2 == "3") {
      _imagechange = "assets/Schichtdarstellung/Schrägdach_3.png";
      Boxheight = 300;
      Boxwidth = 450;
    }
    if (dropdown1 == "Schrägdach" && dropdown2 == "4") {
      _imagechange = "assets/Schichtdarstellung/Schrägdach_4.png";
      Boxheight = 300;
      Boxwidth = 450;
    }
    if (dropdown1 == "Schrägdach" && dropdown2 == "5") {
      _imagechange = "assets/Schichtdarstellung/Schrägdach_5.png";
      Boxheight = 300;
      Boxwidth = 450;
    }
    if (dropdown1 == "Schrägdach" && dropdown2 == "6") {
      _imagechange = "assets/Schichtdarstellung/Schrägdach_6.png";
      Boxheight = 300;
      Boxwidth = 450;
    }
  }

  bool _checked1 = false;
  bool _checked2 = false;
  bool _isvisible1 = false;
  bool _isvisible2 = false;

  void checkedfn1(_checked1) {
    if (_checked1 == true) {
      _checked2 = false;
      _isvisible1 = true;
      _isvisible2 = false;

      Dicke1.text = "";
      Dicke2.text = "";
      Dicke3.text = "";
      Dicke4.text = "";
      Dicke5.text = "";
      Dicke6.text = "";
      WaermeLF1.text = "";
      WaermeLF2.text = "";
      WaermeLF3.text = "";
      WaermeLF4.text = "";
      WaermeLF5.text = "";
      WaermeLF6.text = "";
      _Rs = [];
    }
    if (_checked1 == false) {
      _isvisible1 = false;
      bautyp1 = null;
      bautyp2 = null;
      bautyp3 = null;
      bautyp4 = null;
      bautyp5 = null;
      bautyp6 = null;
      baustoff1 = null;
      baustoff2 = null;
      baustoff3 = null;
      baustoff4 = null;
      baustoff5 = null;
      baustoff6 = null;
      data1 = [];
      data2 = [];
      data3 = [];
      data4 = [];
      data5 = [];
      data6 = [];
      _visibletable = false;
      _visibleRu1 = false;
      _visibleRu2 = false;
      _visibleRu3 = false;
      _visibleRu4 = false;
      _visibleRu5 = false;
      _visibleRu6 = false;
      _Ru1.text = "";
      _Ru2.text = "";
      _Ru3.text = "";
      _Ru4.text = "";
      _Ru5.text = "";
      _Ru6.text = "";
      _visibleRv1 = false;
      _visibleRv2 = false;
      _visibleRv3 = false;
      _visibleRv4 = false;
      _visibleRv5 = false;
      _visibleRv6 = false;
      _Rv1.text = "";
      _Rv2.text = "";
      _Rv3.text = "";
      _Rv4.text = "";
      _Rv5.text = "";
      _Rv6.text = "";
      _A1.text = "";
      _A2.text = "";
      _A3.text = "";
      _A4.text = "";
      _A5.text = "";
      _A6.text = "";
      _Rs = [];
    }
    setState(() {
      this._checked1 = _checked1;
    });
  }

  void checkedfn2(_checked2) {
    if (_checked2 == true) {
      _checked1 = false;
      _isvisible1 = false;
      _isvisible2 = true;
      bautyp1 = null;
      bautyp2 = null;
      bautyp3 = null;
      bautyp4 = null;
      bautyp5 = null;
      bautyp6 = null;
      baustoff1 = null;
      baustoff2 = null;
      baustoff3 = null;
      baustoff4 = null;
      baustoff5 = null;
      baustoff6 = null;
      Dicke1.text = "";
      Dicke2.text = "";
      Dicke3.text = "";
      Dicke4.text = "";
      Dicke5.text = "";
      Dicke6.text = "";
      data1 = [];
      data2 = [];
      data3 = [];
      data4 = [];
      data5 = [];
      data6 = [];
      _visibletable = false;
      _visibleRu1 = false;
      _visibleRu2 = false;
      _visibleRu3 = false;
      _visibleRu4 = false;
      _visibleRu5 = false;
      _visibleRu6 = false;
      _Ru1.text = "";
      _Ru2.text = "";
      _Ru3.text = "";
      _Ru4.text = "";
      _Ru5.text = "";
      _Ru6.text = "";
      _visibleRv1 = false;
      _visibleRv2 = false;
      _visibleRv3 = false;
      _visibleRv4 = false;
      _visibleRv5 = false;
      _visibleRv6 = false;
      _Rv1.text = "";
      _Rv2.text = "";
      _Rv3.text = "";
      _Rv4.text = "";
      _Rv5.text = "";
      _Rv6.text = "";
      _A1.text = "";
      _A2.text = "";
      _A3.text = "";
      _A4.text = "";
      _A5.text = "";
      _A6.text = "";
      _Rs = [];
      populate_Rse();
    }
    if (_checked2 == false) {
      _isvisible2 = false;

      Dicke1.text = "";
      Dicke2.text = "";
      Dicke3.text = "";
      Dicke4.text = "";
      Dicke5.text = "";
      Dicke6.text = "";
      WaermeLF1.text = "";
      WaermeLF2.text = "";
      WaermeLF3.text = "";
      WaermeLF4.text = "";
      WaermeLF5.text = "";
      WaermeLF6.text = "";
    }
    setState(() {
      this._checked2 = _checked2;
    });
  }

  static const List<String> SchichtenKat = <String>[
    'Datasheet1',
    'Datasheet2',
    'Datasheet3',
    'Datasheet4',
    'Datasheet5',
    'Datasheet6',
    'Datasheet7',
    'Datasheet8',
    'ruhende Luftschicht',
    'schwach belüftete Luftschicht',
    'stark belüftete Luftschicht',
    'Datasheet9',
  ];

  String? bautyp1;
  String? bautyp2;
  String? bautyp3;
  String? bautyp4;
  String? bautyp5;
  String? bautyp6;
  String? baustoff1;
  String? baustoff2;
  String? baustoff3;
  String? baustoff4;
  String? baustoff5;
  String? baustoff6;

  List<DropdownMenuItem<String>> data1 = [];
  List<DropdownMenuItem<String>> data2 = [];
  List<DropdownMenuItem<String>> data3 = [];
  List<DropdownMenuItem<String>> data4 = [];
  List<DropdownMenuItem<String>> data5 = [];
  List<DropdownMenuItem<String>> data6 = [];
  List<DropdownMenuItem<String>> _Rs = [];

  void populateDatasheet11() {
    for (var i = 1; i < Datasheet1.length; i++) {
      data1.add(DropdownMenuItem<String>(
        child: Text(Datasheet1[i][0]),
        value: Datasheet1[i][2].toString(),
      ));
    }
  }

  void populateDatasheet12() {
    for (var i = 1; i < Datasheet1.length; i++) {
      data2.add(DropdownMenuItem<String>(
        child: Text(Datasheet1[i][0]),
        value: Datasheet1[i][2].toString(),
      ));
    }
  }

  void populateDatasheet13() {
    for (var i = 1; i < Datasheet1.length; i++) {
      data3.add(DropdownMenuItem<String>(
        child: Text(Datasheet1[i][0]),
        value: Datasheet1[i][2].toString(),
      ));
    }
  }

  void populateDatasheet14() {
    for (var i = 1; i < Datasheet1.length; i++) {
      data4.add(DropdownMenuItem<String>(
        child: Text(Datasheet1[i][0]),
        value: Datasheet1[i][2].toString(),
      ));
    }
  }

  void populateDatasheet15() {
    for (var i = 1; i < Datasheet1.length; i++) {
      data5.add(DropdownMenuItem<String>(
        child: Text(Datasheet1[i][0]),
        value: Datasheet1[i][2].toString(),
      ));
    }
  }

  void populateDatasheet16() {
    for (var i = 1; i < Datasheet1.length; i++) {
      data6.add(DropdownMenuItem<String>(
        child: Text(Datasheet1[i][0]),
        value: Datasheet1[i][2].toString(),
      ));
    }
  }

  void populateDatasheet21() {
    for (var i = 1; i < Datasheet2.length; i++) {
      data1.add(DropdownMenuItem<String>(
        child: Text(Datasheet2[i][0]),
        value: Datasheet2[i][2].toString(),
      ));
    }
  }

  void populateDatasheet22() {
    for (var i = 1; i < Datasheet2.length; i++) {
      data2.add(DropdownMenuItem<String>(
          child: Text(Datasheet2[i][0]), value: Datasheet2[i][2].toString()));
    }
  }

  void populateDatasheet23() {
    for (var i = 1; i < Datasheet2.length; i++) {
      data3.add(DropdownMenuItem<String>(
          child: Text(Datasheet2[i][0]), value: Datasheet2[i][2].toString()));
    }
  }

  void populateDatasheet24() {
    for (var i = 1; i < Datasheet2.length; i++) {
      data4.add(DropdownMenuItem<String>(
          child: Text(Datasheet2[i][0]), value: Datasheet2[i][2].toString()));
    }
  }

  void populateDatasheet25() {
    for (var i = 1; i < Datasheet2.length; i++) {
      data5.add(DropdownMenuItem<String>(
          child: Text(Datasheet2[i][0]), value: Datasheet2[i][2].toString()));
    }
  }

  void populateDatasheet26() {
    for (var i = 1; i < Datasheet2.length; i++) {
      data6.add(DropdownMenuItem<String>(
          child: Text(Datasheet2[i][0]), value: Datasheet2[i][2].toString()));
    }
  }

  void populateDatasheet31() {
    for (var i = 1; i < Datasheet3.length; i++) {
      data1.add(DropdownMenuItem<String>(
          child: Text(Datasheet3[i][0]), value: Datasheet3[i][2].toString()));
    }
  }

  void populateDatasheet32() {
    for (var i = 1; i < Datasheet3.length; i++) {
      data2.add(DropdownMenuItem<String>(
          child: Text(Datasheet3[i][0]), value: Datasheet3[i][2].toString()));
    }
  }

  void populateDatasheet33() {
    for (var i = 1; i < Datasheet3.length; i++) {
      data3.add(DropdownMenuItem<String>(
          child: Text(Datasheet3[i][0]), value: Datasheet3[i][2].toString()));
    }
  }

  void populateDatasheet34() {
    for (var i = 1; i < Datasheet3.length; i++) {
      data4.add(DropdownMenuItem<String>(
          child: Text(Datasheet3[i][0]), value: Datasheet3[i][2].toString()));
    }
  }

  void populateDatasheet35() {
    for (var i = 1; i < Datasheet3.length; i++) {
      data5.add(DropdownMenuItem<String>(
          child: Text(Datasheet3[i][0]), value: Datasheet3[i][2].toString()));
    }
  }

  void populateDatasheet36() {
    for (var i = 1; i < Datasheet3.length; i++) {
      data6.add(DropdownMenuItem<String>(
          child: Text(Datasheet3[i][0]), value: Datasheet3[i][2].toString()));
    }
  }

  void populateDatasheet41() {
    for (var i = 1; i < Datasheet4.length; i++) {
      data1.add(DropdownMenuItem<String>(
          child: Text(Datasheet4[i][0]), value: Datasheet4[i][2].toString()));
    }
  }

  void populateDatasheet42() {
    for (var i = 1; i < Datasheet4.length; i++) {
      data2.add(DropdownMenuItem<String>(
          child: Text(Datasheet4[i][0]), value: Datasheet4[i][2].toString()));
    }
  }

  void populateDatasheet43() {
    for (var i = 1; i < Datasheet4.length; i++) {
      data3.add(DropdownMenuItem<String>(
          child: Text(Datasheet4[i][0]), value: Datasheet4[i][2].toString()));
    }
  }

  void populateDatasheet44() {
    for (var i = 1; i < Datasheet4.length; i++) {
      data4.add(DropdownMenuItem<String>(
          child: Text(Datasheet4[i][0]), value: Datasheet4[i][2].toString()));
    }
  }

  void populateDatasheet45() {
    for (var i = 1; i < Datasheet4.length; i++) {
      data5.add(DropdownMenuItem<String>(
          child: Text(Datasheet4[i][0]), value: Datasheet4[i][2].toString()));
    }
  }

  void populateDatasheet46() {
    for (var i = 1; i < Datasheet4.length; i++) {
      data6.add(DropdownMenuItem<String>(
          child: Text(Datasheet4[i][0]), value: Datasheet4[i][2].toString()));
    }
  }

  void populateDatasheet51() {
    for (var i = 1; i < Datasheet5.length; i++) {
      data1.add(DropdownMenuItem<String>(
          child: Text(Datasheet5[i][0]), value: Datasheet5[i][2].toString()));
    }
  }

  void populateDatasheet52() {
    for (var i = 1; i < Datasheet5.length; i++) {
      data2.add(DropdownMenuItem<String>(
          child: Text(Datasheet5[i][0]), value: Datasheet5[i][2].toString()));
    }
  }

  void populateDatasheet53() {
    for (var i = 1; i < Datasheet5.length; i++) {
      data3.add(DropdownMenuItem<String>(
          child: Text(Datasheet5[i][0]), value: Datasheet5[i][2].toString()));
    }
  }

  void populateDatasheet54() {
    for (var i = 1; i < Datasheet5.length; i++) {
      data4.add(DropdownMenuItem<String>(
          child: Text(Datasheet5[i][0]), value: Datasheet5[i][2].toString()));
    }
  }

  void populateDatasheet55() {
    for (var i = 1; i < Datasheet5.length; i++) {
      data5.add(DropdownMenuItem<String>(
          child: Text(Datasheet5[i][0]), value: Datasheet5[i][2].toString()));
    }
  }

  void populateDatasheet56() {
    for (var i = 1; i < Datasheet5.length; i++) {
      data6.add(DropdownMenuItem<String>(
          child: Text(Datasheet5[i][0]), value: Datasheet5[i][2].toString()));
    }
  }

  void populateDatasheet61() {
    for (var i = 1; i < Datasheet6.length; i++) {
      data1.add(DropdownMenuItem<String>(
          child: Text(Datasheet6[i][0]), value: Datasheet6[i][2].toString()));
    }
  }

  void populateDatasheet62() {
    for (var i = 1; i < Datasheet6.length; i++) {
      data2.add(DropdownMenuItem<String>(
          child: Text(Datasheet6[i][0]), value: Datasheet6[i][2].toString()));
    }
  }

  void populateDatasheet63() {
    for (var i = 1; i < Datasheet6.length; i++) {
      data3.add(DropdownMenuItem<String>(
          child: Text(Datasheet6[i][0]), value: Datasheet6[i][2].toString()));
    }
  }

  void populateDatasheet64() {
    for (var i = 1; i < Datasheet6.length; i++) {
      data4.add(DropdownMenuItem<String>(
          child: Text(Datasheet6[i][0]), value: Datasheet6[i][2].toString()));
    }
  }

  void populateDatasheet65() {
    for (var i = 1; i < Datasheet6.length; i++) {
      data5.add(DropdownMenuItem<String>(
          child: Text(Datasheet6[i][0]), value: Datasheet6[i][2].toString()));
    }
  }

  void populateDatasheet66() {
    for (var i = 1; i < Datasheet6.length; i++) {
      data6.add(DropdownMenuItem<String>(
          child: Text(Datasheet6[i][0]), value: Datasheet6[i][2].toString()));
    }
  }

  void populateDatasheet71() {
    for (var i = 1; i < Datasheet7.length; i++) {
      data1.add(DropdownMenuItem<String>(
          child: Text(Datasheet7[i][0]), value: Datasheet7[i][2].toString()));
    }
  }

  void populateDatasheet72() {
    for (var i = 1; i < Datasheet7.length; i++) {
      data2.add(DropdownMenuItem<String>(
          child: Text(Datasheet7[i][0]), value: Datasheet7[i][2].toString()));
    }
  }

  void populateDatasheet73() {
    for (var i = 1; i < Datasheet7.length; i++) {
      data3.add(DropdownMenuItem<String>(
          child: Text(Datasheet7[i][0]), value: Datasheet7[i][2].toString()));
    }
  }

  void populateDatasheet74() {
    for (var i = 1; i < Datasheet7.length; i++) {
      data4.add(DropdownMenuItem<String>(
          child: Text(Datasheet7[i][0]), value: Datasheet7[i][2].toString()));
    }
  }

  void populateDatasheet75() {
    for (var i = 1; i < Datasheet7.length; i++) {
      data5.add(DropdownMenuItem<String>(
          child: Text(Datasheet7[i][0]), value: Datasheet7[i][2].toString()));
    }
  }

  void populateDatasheet76() {
    for (var i = 1; i < Datasheet7.length; i++) {
      data6.add(DropdownMenuItem<String>(
          child: Text(Datasheet7[i][0]), value: Datasheet7[i][2].toString()));
    }
  }

  void populateDatasheet81() {
    for (var i = 1; i < Datasheet8.length; i++) {
      data1.add(DropdownMenuItem<String>(
          child: Text(Datasheet8[i][0]), value: Datasheet8[i][2].toString()));
    }
  }

  void populateDatasheet82() {
    for (var i = 1; i < Datasheet8.length; i++) {
      data2.add(DropdownMenuItem<String>(
          child: Text(Datasheet8[i][0]), value: Datasheet8[i][2].toString()));
    }
  }

  void populateDatasheet83() {
    for (var i = 1; i < Datasheet8.length; i++) {
      data3.add(DropdownMenuItem<String>(
          child: Text(Datasheet8[i][0]), value: Datasheet8[i][2].toString()));
    }
  }

  void populateDatasheet84() {
    for (var i = 1; i < Datasheet8.length; i++) {
      data4.add(DropdownMenuItem<String>(
          child: Text(Datasheet8[i][0]), value: Datasheet8[i][2].toString()));
    }
  }

  void populateDatasheet85() {
    for (var i = 1; i < Datasheet8.length; i++) {
      data5.add(DropdownMenuItem<String>(
          child: Text(Datasheet8[i][0]), value: Datasheet8[i][2].toString()));
    }
  }

  void populateDatasheet86() {
    for (var i = 1; i < Datasheet8.length; i++) {
      data6.add(DropdownMenuItem<String>(
          child: Text(Datasheet8[i][0]), value: Datasheet8[i][2].toString()));
    }
  }

  void populateDatasheet91() {
    for (var i = 1; i < Datasheet9.length; i++) {
      data1.add(DropdownMenuItem<String>(
          child: Text(Datasheet9[i][0]), value: Datasheet9[i][2].toString()));
    }
  }

  void populateDatasheet92() {
    for (var i = 1; i < Datasheet9.length; i++) {
      data2.add(DropdownMenuItem<String>(
          child: Text(Datasheet9[i][0]), value: Datasheet9[i][2].toString()));
    }
  }

  void populateDatasheet93() {
    for (var i = 1; i < Datasheet9.length; i++) {
      data3.add(DropdownMenuItem<String>(
          child: Text(Datasheet9[i][0]), value: Datasheet9[i][2].toString()));
    }
  }

  void populateDatasheet94() {
    for (var i = 1; i < Datasheet9.length; i++) {
      data4.add(DropdownMenuItem<String>(
          child: Text(Datasheet9[i][0]), value: Datasheet9[i][2].toString()));
    }
  }

  void populateDatasheet95() {
    for (var i = 1; i < Datasheet9.length; i++) {
      data5.add(DropdownMenuItem<String>(
          child: Text(Datasheet9[i][0]), value: Datasheet9[i][2].toString()));
    }
  }

  void populateDatasheet96() {
    for (var i = 1; i < Datasheet9.length; i++) {
      data6.add(DropdownMenuItem<String>(
          child: Text(Datasheet9[i][0]), value: Datasheet9[i][2].toString()));
    }
  }

  bool _baudicke1 = false;
  bool _baudicke2 = false;
  bool _baudicke3 = false;
  bool _baudicke4 = false;
  bool _baudicke5 = false;
  bool _baudicke6 = false;
  bool _visibletable = false;

  bool _visibleRu1 = false;
  bool _visibleRu2 = false;
  bool _visibleRu3 = false;
  bool _visibleRu4 = false;
  bool _visibleRu5 = false;
  bool _visibleRu6 = false;

  bool _visibleRv1 = false;
  bool _visibleRv2 = false;
  bool _visibleRv3 = false;
  bool _visibleRv4 = false;
  bool _visibleRv5 = false;
  bool _visibleRv6 = false;

  void selected1(bautyp1) {
    if (bautyp1 == 'Datasheet1') {
      data1 = [];
      populateDatasheet11();
      baustoff1 = null;
      _baudicke1 = true;
      _visibleRu1 = false;
      _visibleRv1 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp1 == 'Datasheet2') {
      data1 = [];
      populateDatasheet21();
      baustoff1 = null;
      _baudicke1 = true;
      _visibleRu1 = false;
      _visibleRv1 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp1 == 'Datasheet3') {
      data1 = [];
      populateDatasheet31();
      baustoff1 = null;
      _baudicke1 = true;
      _visibleRu1 = false;
      _visibleRv1 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp1 == 'Datasheet4') {
      data1 = [];
      populateDatasheet41();
      baustoff1 = null;
      _baudicke1 = true;
      _visibleRu1 = false;
      _visibleRv1 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp1 == 'Datasheet5') {
      data1 = [];
      populateDatasheet51();
      baustoff1 = null;
      _baudicke1 = true;
      _visibleRu1 = false;
      _visibleRv1 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp1 == 'Datasheet6') {
      data1 = [];
      populateDatasheet61();
      baustoff1 = null;
      _baudicke1 = true;
      _visibleRu1 = false;
      _visibleRv1 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp1 == 'Datasheet7') {
      data1 = [];
      populateDatasheet71();
      baustoff1 = null;
      _baudicke1 = true;
      _visibleRu1 = false;
      _visibleRv1 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp1 == 'Datasheet8') {
      data1 = [];
      populateDatasheet81();
      baustoff1 = null;
      _baudicke1 = true;
      _visibleRu1 = false;
      _visibleRv1 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp1 == 'ruhende Luftschicht') {
      _baudicke1 = false;
      _visibleRu1 = true;
      _visibleRv1 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp1 == 'schwach belüftete Luftschicht') {
      _baudicke1 = false;
      _visibleRu1 = true;
      _visibleRv1 = true;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp1 == 'stark belüftete Luftschicht') {
      _Rs = [];
      populate_Rsi();
      _baudicke1 = false;
      _visibleRu1 = false;
      _visibleRv1 = false;
    }
    if (bautyp1 == 'Datasheet9') {
      data1 = [];
      populateDatasheet91();
      baustoff1 = null;
      _baudicke1 = true;
      _visibleRu1 = false;
      _visibleRv1 = false;
      _Rs = [];
      populate_Rse();
    }

    table(bautyp1, bautyp2, bautyp3, bautyp4, bautyp5, bautyp6);
    setState(() {
      this.bautyp1 = bautyp1;
    });
  }

  void selected2(bautyp2) {
    if (bautyp2 == 'Datasheet1') {
      data2 = [];
      populateDatasheet12();
      baustoff2 = null;
      _baudicke2 = true;
      _visibleRu2 = false;
      _visibleRv2 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp2 == 'Datasheet2') {
      data2 = [];
      populateDatasheet22();
      baustoff2 = null;
      _baudicke2 = true;
      _visibleRu2 = false;
      _visibleRv2 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp2 == 'Datasheet3') {
      data2 = [];
      populateDatasheet32();
      baustoff2 = null;
      _baudicke2 = true;
      _visibleRu2 = false;
      _visibleRv2 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp2 == 'Datasheet4') {
      data2 = [];
      populateDatasheet42();
      baustoff2 = null;
      _baudicke2 = true;
      _visibleRu2 = false;
      _visibleRv2 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp2 == 'Datasheet5') {
      data2 = [];
      populateDatasheet52();
      baustoff2 = null;
      _baudicke2 = true;
      _visibleRu2 = false;
      _visibleRv2 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp2 == 'Datasheet6') {
      data2 = [];
      populateDatasheet62();
      baustoff2 = null;
      _baudicke2 = true;
      _visibleRu2 = false;
      _visibleRv2 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp2 == 'Datasheet7') {
      data2 = [];
      populateDatasheet72();
      baustoff2 = null;
      _baudicke2 = true;
      _visibleRu2 = false;
      _visibleRv2 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp2 == 'Datasheet8') {
      data2 = [];
      populateDatasheet82();
      baustoff2 = null;
      _baudicke2 = true;
      _visibleRu2 = false;
      _visibleRv2 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp2 == 'ruhende Luftschicht') {
      _baudicke2 = false;
      _visibleRu2 = true;
      _visibleRv2 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp2 == 'schwach belüftete Luftschicht') {
      _baudicke2 = false;
      _visibleRu2 = true;
      _visibleRv2 = true;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp2 == 'stark belüftete Luftschicht') {
      _baudicke2 = false;
      _visibleRu2 = false;
      _visibleRv2 = false;
      _Rs = [];
      populate_Rsi();
    }
    if (bautyp2 == 'Datasheet9') {
      data2 = [];
      populateDatasheet92();
      baustoff2 = null;
      _baudicke2 = true;
      _visibleRu2 = false;
      _visibleRv2 = false;
      _Rs = [];
      populate_Rse();
    }

    table(bautyp1, bautyp2, bautyp3, bautyp4, bautyp5, bautyp6);
    setState(() {
      this.bautyp2 = bautyp2;
    });
  }

  void selected3(bautyp3) {
    if (bautyp3 == 'Datasheet1') {
      data3 = [];
      populateDatasheet13();
      baustoff3 = null;
      _baudicke3 = true;
      _visibleRu3 = false;
      _visibleRv3 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp3 == 'Datasheet2') {
      data3 = [];
      populateDatasheet23();
      baustoff3 = null;
      _baudicke3 = true;
      _visibleRu3 = false;
      _visibleRv3 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp3 == 'Datasheet3') {
      data3 = [];
      populateDatasheet33();
      baustoff3 = null;
      _baudicke3 = true;
      _visibleRu3 = false;
      _visibleRv3 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp3 == 'Datasheet4') {
      data3 = [];
      populateDatasheet43();
      baustoff3 = null;
      _baudicke3 = true;
      _visibleRu3 = false;
      _visibleRv3 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp3 == 'Datasheet5') {
      data3 = [];
      populateDatasheet53();
      baustoff3 = null;
      _baudicke3 = true;
      _visibleRu3 = false;
      _visibleRv3 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp3 == 'Datasheet6') {
      data3 = [];
      populateDatasheet63();
      baustoff3 = null;
      _baudicke3 = true;
      _visibleRu3 = false;
      _visibleRv3 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp3 == 'Datasheet7') {
      data3 = [];
      populateDatasheet73();
      baustoff3 = null;
      _baudicke3 = true;
      _visibleRu3 = false;
      _visibleRv3 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp3 == 'Datasheet8') {
      data3 = [];
      populateDatasheet83();
      baustoff3 = null;
      _baudicke3 = true;
      _visibleRu3 = false;
      _visibleRv3 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp3 == 'ruhende Luftschicht') {
      _baudicke3 = false;
      _visibleRu3 = true;
      _visibleRv3 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp3 == 'schwach belüftete Luftschicht') {
      _baudicke3 = false;
      _visibleRu3 = true;
      _visibleRv3 = true;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp3 == 'stark belüftete Luftschicht') {
      _baudicke3 = false;
      _visibleRu3 = false;
      _visibleRv3 = false;
      _Rs = [];
      populate_Rsi();
    }
    if (bautyp3 == 'Datasheet9') {
      data3 = [];
      populateDatasheet93();
      baustoff3 = null;
      _baudicke3 = true;
      _visibleRu3 = false;
      _visibleRv3 = false;
      _Rs = [];
      populate_Rse();
    }

    table(bautyp1, bautyp2, bautyp3, bautyp4, bautyp5, bautyp6);
    setState(() {
      this.bautyp3 = bautyp3;
    });
  }

  void selected4(bautyp4) {
    if (bautyp4 == 'Datasheet1') {
      data4 = [];
      populateDatasheet14();
      baustoff4 = null;
      _baudicke4 = true;
      _visibleRu4 = false;
      _visibleRv4 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp4 == 'Datasheet2') {
      data4 = [];
      populateDatasheet24();
      baustoff4 = null;
      _baudicke4 = true;
      _visibleRu4 = false;
      _visibleRv4 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp4 == 'Datasheet3') {
      data4 = [];
      populateDatasheet34();
      baustoff4 = null;
      _baudicke4 = true;
      _visibleRu4 = false;
      _visibleRv4 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp4 == 'Datasheet4') {
      data4 = [];
      populateDatasheet44();
      baustoff4 = null;
      _baudicke4 = true;
      _visibleRu4 = false;
      _visibleRv4 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp4 == 'Datasheet5') {
      data4 = [];
      populateDatasheet54();
      baustoff4 = null;
      _baudicke4 = true;
      _visibleRu4 = false;
      _visibleRv4 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp4 == 'Datasheet6') {
      data4 = [];
      populateDatasheet64();
      baustoff4 = null;
      _baudicke4 = true;
      _visibleRu4 = false;
      _visibleRv4 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp4 == 'Datasheet7') {
      data4 = [];
      populateDatasheet74();
      baustoff4 = null;
      _baudicke4 = true;
      _visibleRu4 = false;
      _visibleRv4 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp4 == 'Datasheet8') {
      data4 = [];
      populateDatasheet84();
      baustoff4 = null;
      _baudicke4 = true;
      _visibleRu4 = false;
      _visibleRv4 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp4 == 'ruhende Luftschicht') {
      _baudicke4 = false;
      _visibleRu4 = true;
      _visibleRv4 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp4 == 'schwach belüftete Luftschicht') {
      _baudicke4 = false;
      _visibleRu4 = true;
      _visibleRv4 = true;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp4 == 'stark belüftete Luftschicht') {
      _baudicke4 = false;
      _visibleRu4 = false;
      _visibleRv4 = false;
      _Rs = [];
      populate_Rsi();
    }
    if (bautyp4 == 'Datasheet9') {
      data4 = [];
      populateDatasheet94();
      baustoff4 = null;
      _baudicke4 = true;
      _visibleRu4 = false;
      _visibleRv4 = false;
      _Rs = [];
      populate_Rse();
    }

    table(bautyp1, bautyp2, bautyp3, bautyp4, bautyp5, bautyp6);
    setState(() {
      this.bautyp4 = bautyp4;
    });
  }

  void selected5(bautyp5) {
    if (bautyp5 == 'Datasheet1') {
      data5 = [];
      populateDatasheet15();
      baustoff5 = null;
      _baudicke5 = true;
      _visibleRu5 = false;
      _visibleRv5 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp5 == 'Datasheet2') {
      data5 = [];
      populateDatasheet25();
      baustoff5 = null;
      _baudicke5 = true;
      _visibleRu5 = false;
      _visibleRv5 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp5 == 'Datasheet3') {
      data5 = [];
      populateDatasheet35();
      baustoff5 = null;
      _baudicke5 = true;
      _visibleRu5 = false;
      _visibleRv5 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp5 == 'Datasheet4') {
      data5 = [];
      populateDatasheet45();
      baustoff5 = null;
      _baudicke5 = true;
      _visibleRu5 = false;
      _visibleRv5 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp5 == 'Datasheet5') {
      data5 = [];
      populateDatasheet55();
      baustoff5 = null;
      _baudicke5 = true;
      _visibleRu5 = false;
      _visibleRv5 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp5 == 'Datasheet6') {
      data5 = [];
      populateDatasheet65();
      baustoff5 = null;
      _baudicke5 = true;
      _visibleRu5 = false;
      _visibleRv5 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp5 == 'Datasheet7') {
      data5 = [];
      populateDatasheet75();
      baustoff5 = null;
      _baudicke5 = true;
      _visibleRu5 = false;
      _visibleRv5 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp5 == 'Datasheet8') {
      data5 = [];
      populateDatasheet85();
      baustoff5 = null;
      _baudicke5 = true;
      _visibleRu5 = false;
      _visibleRv5 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp5 == 'ruhende Luftschicht') {
      _baudicke5 = false;
      _visibleRu5 = true;
      _visibleRv5 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp5 == 'schwach belüftete Luftschicht') {
      _baudicke5 = false;
      _visibleRu5 = true;
      _visibleRv5 = true;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp5 == 'stark belüftete Luftschicht') {
      _baudicke5 = false;
      _visibleRu5 = false;
      _visibleRv5 = false;
      _Rs = [];
      populate_Rsi();
    }
    if (bautyp5 == 'Datasheet9') {
      data5 = [];
      populateDatasheet95();
      baustoff5 = null;
      _baudicke5 = true;
      _visibleRu5 = false;
      _visibleRv5 = false;
      _Rs = [];
      populate_Rse();
    }

    table(bautyp1, bautyp2, bautyp3, bautyp4, bautyp5, bautyp6);
    setState(() {
      this.bautyp5 = bautyp5;
    });
  }

  void selected6(bautyp6) {
    if (bautyp6 == 'Datasheet1') {
      data6 = [];
      populateDatasheet16();
      baustoff6 = null;
      _baudicke6 = true;
      _visibleRu6 = false;
      _visibleRv6 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp6 == 'Datasheet2') {
      data6 = [];
      populateDatasheet26();
      baustoff6 = null;
      _baudicke6 = true;
      _visibleRu6 = false;
      _visibleRv6 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp6 == 'Datasheet3') {
      data6 = [];
      populateDatasheet36();
      baustoff6 = null;
      _baudicke6 = true;
      _visibleRu6 = false;
      _visibleRv6 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp6 == 'Datasheet4') {
      data6 = [];
      populateDatasheet46();
      baustoff6 = null;
      _baudicke6 = true;
      _visibleRu6 = false;
      _visibleRv6 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp6 == 'Datasheet5') {
      data6 = [];
      populateDatasheet56();
      baustoff6 = null;
      _baudicke6 = true;
      _visibleRu6 = false;
      _visibleRv6 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp6 == 'Datasheet6') {
      data6 = [];
      populateDatasheet66();
      baustoff6 = null;
      _baudicke6 = true;
      _visibleRu6 = false;
      _visibleRv6 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp6 == 'Datasheet7') {
      data6 = [];
      populateDatasheet76();
      baustoff6 = null;
      _baudicke6 = true;
      _visibleRu6 = false;
      _visibleRv6 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp6 == 'Datasheet8') {
      data6 = [];
      populateDatasheet86();
      baustoff6 = null;
      _baudicke6 = true;
      _visibleRu6 = false;
      _visibleRv6 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp6 == 'ruhende Luftschicht') {
      _baudicke6 = false;
      _visibleRu6 = true;
      _visibleRv6 = false;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp6 == 'schwach belüftete Luftschicht') {
      _baudicke6 = false;
      _visibleRu6 = true;
      _visibleRv6 = true;
      _Rs = [];
      populate_Rse();
    }
    if (bautyp6 == 'stark belüftete Luftschicht') {
      _baudicke6 = false;
      _visibleRu6 = false;
      _visibleRv6 = false;
      _Rs = [];
      populate_Rsi();
    }
    if (bautyp6 == 'Datasheet9') {
      data6 = [];
      populateDatasheet96();
      baustoff6 = null;
      _baudicke6 = true;
      _visibleRu6 = false;
      _visibleRv6 = false;
      _Rs = [];
      populate_Rse();
    }

    table(bautyp1, bautyp2, bautyp3, bautyp4, bautyp5, bautyp6);
    setState(() {
      this.bautyp6 = bautyp6;
    });
  }

  void table(bautyp1, bautyp2, bautyp3, bautyp4, bautyp5, bautyp6) {
    if (bautyp1 == 'ruhende Luftschicht' ||
        bautyp2 == 'ruhende Luftschicht' ||
        bautyp3 == 'ruhende Luftschicht' ||
        bautyp4 == 'ruhende Luftschicht' ||
        bautyp5 == 'ruhende Luftschicht' ||
        bautyp6 == 'ruhende Luftschicht' ||
        bautyp1 == 'schwach belüftete Luftschicht' ||
        bautyp2 == 'schwach belüftete Luftschicht' ||
        bautyp3 == 'schwach belüftete Luftschicht' ||
        bautyp4 == 'schwach belüftete Luftschicht' ||
        bautyp5 == 'schwach belüftete Luftschicht' ||
        bautyp6 == 'schwach belüftete Luftschicht') {
      _visibletable = true;
    } else {
      _visibletable = false;
    }
  }

  String? Rsi;
  String? Rse;
  String? Rs;

  static const List Rsi_list = <String>[
    '0.10',
    '0.13',
    '0.17',
  ];

  static const List Rse_list = <String>[
    '0',
    '0.04',
    '0.10',
    '0.13',
    '0.17',
  ];

  void populate_Rsi() {
    for (var i = 0; i < Rsi_list.length; i++) {
      _Rs.add(DropdownMenuItem<String>(
          child: Text(
            Rsi_list[i],
            style: TextStyle(fontSize: 18),
          ),
          value: Rsi_list[i].toString()));
    }
  }

  void populate_Rse() {
    for (var i = 0; i < Rse_list.length; i++) {
      _Rs.add(DropdownMenuItem<String>(
          child: Text(
            Rse_list[i],
            style: TextStyle(fontSize: 18),
          ),
          value: Rse_list[i].toString()));
    }
  }

  double? R_ges;
  double? R_T;
  double? U_Wert;

  var R1;
  var R2;
  var R3;
  var R4;
  var R5;
  var R6;

  final Dicke1 = TextEditingController();
  final WaermeLF1 = TextEditingController();
  final Dicke2 = TextEditingController();
  final WaermeLF2 = TextEditingController();
  final Dicke3 = TextEditingController();
  final WaermeLF3 = TextEditingController();
  final Dicke4 = TextEditingController();
  final WaermeLF4 = TextEditingController();
  final Dicke5 = TextEditingController();
  final WaermeLF5 = TextEditingController();
  final Dicke6 = TextEditingController();
  final WaermeLF6 = TextEditingController();

  final _Ru1 = TextEditingController();
  final _Ru2 = TextEditingController();
  final _Ru3 = TextEditingController();
  final _Ru4 = TextEditingController();
  final _Ru5 = TextEditingController();
  final _Ru6 = TextEditingController();

  final _Rv1 = TextEditingController();
  final _Rv2 = TextEditingController();
  final _Rv3 = TextEditingController();
  final _Rv4 = TextEditingController();
  final _Rv5 = TextEditingController();
  final _Rv6 = TextEditingController();
  final _A1 = TextEditingController();
  final _A2 = TextEditingController();
  final _A3 = TextEditingController();
  final _A4 = TextEditingController();
  final _A5 = TextEditingController();
  final _A6 = TextEditingController();

  var d1;
  var lambda1;
  var d2;
  var lambda2;
  var d3;
  var lambda3;
  var d4;
  var lambda4;
  var d5;
  var lambda5;
  var d6;
  var lambda6;

  var Rv1;
  var A1;
  var Ru1;
  var Rv2;
  var A2;
  var Ru2;
  var Rv3;
  var A3;
  var Ru3;
  var Rv4;
  var A4;
  var Ru4;
  var Rv5;
  var A5;
  var Ru5;
  var Rv6;
  var A6;
  var Ru6;

  double roundDouble(double value, int places) {
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  double? R_gesr;
  double? R_Tr;
  double? U_Wertr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kopfzeile('Ordner 1 Rechner', context),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: EdgeInsets.all(16),
        children: [
          buildWidget(),
        ],
      ),
    );
  }

  Widget buildWidget() {
    return Column(children: [
      Align(
          alignment: Alignment.topLeft,
          child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Text('1. Bauteilauswahl',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )))),
      SizedBox(height: 10),
      Row(children: [
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Text('Bauteilauswahl:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 10, width: 70),

///////////////////////////////Bauteilauswahl Dropdown///////////////////////////////////////////////

        Align(
            alignment: Alignment(-0.6, 0.4),
            child: Material(
              child: PopupMenuButton<String>(
                elevation: 2.0,
                onSelected: (String result) {
                  setState(() {
                    dropdown1 = result;
                    Bildchange(dropdown1, dropdown2);
                    print('Selection $dropdown1');
                  });
                },
                child: Container(
                  width: 150.0,
                  height: 42.0,
                  decoration: Dropdecoration(),
                  child: Center(child: DropInputText(dropdown1)),
                ),
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: Bauteilauswahl[0],
                    child: Text(Bauteilauswahl[0]),
                  ),
                  PopupMenuItem<String>(
                    value: Bauteilauswahl[1],
                    child: Text(Bauteilauswahl[1]),
                  ),
                  PopupMenuItem<String>(
                    value: Bauteilauswahl[2],
                    child: Text(Bauteilauswahl[2]),
                  ),
                ],
              ),
            )),
      ]),

///////////////////////////////Anzahl Schichten Dropdown///////////////////////////////////////////////

      Row(
        children: [
          Align(
              alignment: Alignment(-1, 0.4),
              child: Column(
                children: [
                  Text('Anzahl der Schichten:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                ],
              )),
          SizedBox(height: 75, width: 30),

///////////////////////////////////////////////////////////////

          Align(
            alignment: Alignment(-0.6, 0.4),
            child: Material(
              child: PopupMenuButton<String>(
                elevation: 2.0,
                onSelected: (String result) {
                  setState(() {
                    dropdown2 = result;
                    Bildchange(dropdown1, dropdown2);
                    visibileDp(dropdown2);
                    print('Selection $dropdown2');
                  });
                },
                child: Container(
                  width: 150.0,
                  height: 42.0,
                  decoration: Dropdecoration(),
                  child: Center(child: DropInputText(dropdown2)),
                ),
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: AnzahlSchichten[0],
                    child: Text(AnzahlSchichten[0]),
                  ),
                  PopupMenuItem<String>(
                    value: AnzahlSchichten[1],
                    child: Text(AnzahlSchichten[1]),
                  ),
                  PopupMenuItem<String>(
                    value: AnzahlSchichten[2],
                    child: Text(AnzahlSchichten[2]),
                  ),
                  PopupMenuItem<String>(
                    value: AnzahlSchichten[3],
                    child: Text(AnzahlSchichten[3]),
                  ),
                ],
              ),
            ),
          )
        ],

/////////////////////////////////////////////Bilddarstellung///////////////////////////////////////////////
      ),
      SizedBox(height: 10),

      Container(
        height: Boxheight,
        width: Boxwidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  _imagechange,
                ),
                alignment: Alignment.center)),
      ),
      SizedBox(height: 30),
      Divider(color: Colors.black),
      SizedBox(height: 10),
      Align(
          alignment: Alignment.topLeft,
          child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Text('2. Schichtauswahl',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )))),

///////////////////////////////Schichtauswahl Dropdown///////////////////////////////////////////////

      Align(
        alignment: Alignment(0.5, 0.2),
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: CheckboxListTile(
              title: Text('Schichtauswahl über Dropdowns',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              controlAffinity: ListTileControlAffinity.leading,
              value: _checked1,
              onChanged: (_checked1) => checkedfn1(_checked1),
            ),
          ),
        ),
      ),
/////////////////////

      Align(
        alignment: Alignment(0.5, 0.2),
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: CheckboxListTile(
              title: Text('Eigene Schichtauswahl',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              controlAffinity: ListTileControlAffinity.leading,
              value: _checked2,
              onChanged: (_checked2) => checkedfn2(_checked2),
            ),
          ),
        ),
      ),

////////////////////////////////////////////////////Dropdown Schicht 1/////////////
      Visibility(
          child: Column(children: [
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(children: [
                Text("Schicht 1:",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(width: 23),

/////////////////////
                ///
                DropdownButton<String>(
                  value: bautyp1,
                  items: SchichtenKat.map((SchichtenKat) =>
                      DropdownMenuItem<String>(
                        value: SchichtenKat,
                        child:
                            Text(SchichtenKat, style: TextStyle(fontSize: 18)),
                      )).toList(),
                  onChanged: (bautyp1) => selected1(bautyp1),
                  hint: Text('Baustofftyp'),
                ),
              ]),
            ),
/////////////////////
            ///
            Visibility(
                child: Row(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: DropdownButton<String>(
                      value: baustoff1,
                      items: data1,
                      onChanged: (data1) => setState(() => baustoff1 = data1),
                      hint: Text(
                          'Baustoff                                        '),
                    ),
                  ),
                  SizedBox(width: 25),
                  SizedBox(
                      width: 90,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: Dicke1,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Dicke [m]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                ]),
                visible: _baudicke1),

////////////////////////////Ru1

            Row(children: [
              SizedBox(width: 92),
              Visibility(
                  child: SizedBox(
                      width: 100,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: _Ru1,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Ru [m²K/W]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  visible: _visibleRu1),

/////////////////Rv1 /// A1
              SizedBox(width: 10),
              Visibility(
                  child: SizedBox(
                      width: 100,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: _Rv1,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Rv [m²K/W]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  visible: _visibleRv1),
            ]),
            SizedBox(height: 10),

            Row(
              children: [
                SizedBox(width: 92),
                Visibility(
                    child: SizedBox(
                        width: 255,
                        child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9.]+')),
                            ],
                            controller: _A1,
                            cursorColor: Colors.black,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              labelText: "Summe der Lüftungsöffnungen A",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ))),
                    visible: _visibleRv1),
              ],
            ),

////////////////////////////////////////////////////Dropdown Schicht 2/////////////
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(children: [
                Text("Schicht 2:",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(width: 23),

/////////////////////
                ///

                DropdownButton<String>(
                  value: bautyp2,
                  items: SchichtenKat.map((SchichtenKat) =>
                      DropdownMenuItem<String>(
                        value: SchichtenKat,
                        child:
                            Text(SchichtenKat, style: TextStyle(fontSize: 18)),
                      )).toList(),
                  onChanged: (bautyp2) => selected2(bautyp2),
                  hint: Text('Baustofftyp'),
                ),
              ]),
            ),

//////////////////////////
            ///

            Visibility(
                child: Row(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: DropdownButton<String>(
                      value: baustoff2,
                      items: data2,
                      onChanged: (data2) => setState(() => baustoff2 = data2),
                      hint: Text(
                          'Baustoff                                        '),
                    ),
                  ),
                  SizedBox(width: 25),
                  SizedBox(
                      width: 90,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: Dicke2,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Dicke [m]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                ]),
                visible: _baudicke2),

////////////////////////////Ru2

            Row(children: [
              SizedBox(width: 92),
              Visibility(
                  child: SizedBox(
                      width: 100,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: _Ru2,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Ru [m²K/W]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  visible: _visibleRu2),

/////////////////Rv2 /// A2
              SizedBox(width: 10),
              Visibility(
                  child: SizedBox(
                      width: 100,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: _Rv2,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Rv [m²K/W]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  visible: _visibleRv2),
            ]),
            SizedBox(height: 10),

            Row(
              children: [
                SizedBox(width: 92),
                Visibility(
                    child: SizedBox(
                        width: 255,
                        child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9.]+')),
                            ],
                            controller: _A2,
                            cursorColor: Colors.black,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              labelText: "Summe der Lüftungsöffnungen A",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ))),
                    visible: _visibleRv2),
              ],
            ),

////////////////////////////////////////////////////Dropdown Schicht 3/////////////
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(children: [
                Text("Schicht 3:",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(width: 23),

/////////////////////
                ///
                ///
                DropdownButton<String>(
                  value: bautyp3,
                  items: SchichtenKat.map((SchichtenKat) =>
                      DropdownMenuItem<String>(
                        value: SchichtenKat,
                        child:
                            Text(SchichtenKat, style: TextStyle(fontSize: 18)),
                      )).toList(),
                  onChanged: (bautyp3) => selected3(bautyp3),
                  hint: Text('Baustofftyp'),
                ),
              ]),
            ),

/////////////////////
            ///
            ///
            Visibility(
                child: Row(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: DropdownButton<String>(
                      value: baustoff3,
                      items: data3,
                      onChanged: (data3) => setState(() => baustoff3 = data3),
                      hint: Text(
                          'Baustoff                                        '),
                    ),
                  ),
                  SizedBox(width: 25),
                  SizedBox(
                      width: 90,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: Dicke3,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Dicke [m]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                ]),
                visible: _baudicke3),

////////////////////////////Ru
            Row(children: [
              SizedBox(width: 92),
              Visibility(
                  child: SizedBox(
                      width: 100,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: _Ru3,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Ru [m²K/W]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  visible: _visibleRu3),

/////////////////Rv /// A
              SizedBox(width: 10),
              Visibility(
                  child: SizedBox(
                      width: 100,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: _Rv3,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Rv [m²K/W]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  visible: _visibleRv3),
            ]),

            SizedBox(height: 10),

            Row(
              children: [
                SizedBox(width: 92),
                Visibility(
                    child: SizedBox(
                        width: 255,
                        child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9.]+')),
                            ],
                            controller: _A3,
                            cursorColor: Colors.black,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              labelText: "Summe der Lüftungsöffnungen A",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ))),
                    visible: _visibleRv3),
              ],
            ),

////////////////////////////////////////////////////Dropdown Schicht 4/////////////

            Visibility(child: SizedBox(height: 25), visible: visibledp4),
            Visibility(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Text("Schicht 4:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(width: 23),

/////////////////////
                    ///
                    ///
                    DropdownButton<String>(
                      value: bautyp4,
                      items: SchichtenKat.map(
                          (SchichtenKat) => DropdownMenuItem<String>(
                                value: SchichtenKat,
                                child: Text(SchichtenKat,
                                    style: TextStyle(fontSize: 18)),
                              )).toList(),
                      onChanged: (bautyp4) => selected4(bautyp4),
                      hint: Text('Baustofftyp'),
                    ),
                  ]),
                ),
                visible: visibledp4),

/////////////////////
            ///
            ///

            Visibility(
                child: Visibility(
                    child: Row(children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: DropdownButton<String>(
                          value: baustoff4,
                          items: data4,
                          onChanged: (data4) =>
                              setState(() => baustoff4 = data4),
                          hint: Text(
                              'Baustoff                                        '),
                        ),
                      ),
                      SizedBox(width: 25),
                      SizedBox(
                          width: 90,
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9.]+')),
                              ],
                              controller: Dicke4,
                              cursorColor: Colors.black,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                labelText: "Dicke [m]",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                              ))),
                    ]),
                    visible: _baudicke4),
                visible: visibledp4),

/////////////////////////Ru
            Row(children: [
              SizedBox(width: 92),
              Visibility(
                  child: SizedBox(
                      width: 100,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: _Ru4,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Ru [m²K/W]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  visible: _visibleRu4),

/////////////////Rv /// A
              SizedBox(width: 10),
              Visibility(
                  child: SizedBox(
                      width: 100,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: _Rv4,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Rv [m²K/W]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  visible: _visibleRv4),
            ]),

            Visibility(child: SizedBox(height: 10), visible: _visibleRv4),

            Row(
              children: [
                SizedBox(width: 92),
                Visibility(
                    child: SizedBox(
                        width: 255,
                        child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9.]+')),
                            ],
                            controller: _A4,
                            cursorColor: Colors.black,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              labelText: "Summe der Lüftungsöffnungen A",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ))),
                    visible: _visibleRv4),
              ],
            ),

////////////////////////////////////////////////////Dropdown Schicht 5/////////////
            Visibility(child: SizedBox(height: 25), visible: visibledp5),
            Visibility(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Text("Schicht 5:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(width: 23),

/////////////////////
                    ///
                    ///
                    DropdownButton<String>(
                      value: bautyp5,
                      items: SchichtenKat.map(
                          (SchichtenKat) => DropdownMenuItem<String>(
                                value: SchichtenKat,
                                child: Text(SchichtenKat,
                                    style: TextStyle(fontSize: 18)),
                              )).toList(),
                      onChanged: (bautyp5) => selected5(bautyp5),
                      hint: Text('Baustofftyp'),
                    ),
                  ]),
                ),
                visible: visibledp5),

/////////////////////
            ///
            ///
            Visibility(
                child: Visibility(
                    child: Row(children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: DropdownButton<String>(
                          value: baustoff5,
                          items: data5,
                          onChanged: (data5) =>
                              setState(() => baustoff5 = data5),
                          hint: Text(
                              'Baustoff                                        '),
                        ),
                      ),
                      SizedBox(width: 25),
                      SizedBox(
                          width: 90,
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9.]+')),
                              ],
                              controller: Dicke5,
                              cursorColor: Colors.black,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                labelText: "Dicke [m]",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                              ))),
                    ]),
                    visible: _baudicke5),
                visible: visibledp5),

/////////////////////////Ru
            Row(children: [
              SizedBox(width: 92),
              Visibility(
                  child: SizedBox(
                      width: 100,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: _Ru5,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Ru [m²K/W]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  visible: _visibleRu5),

/////////////////Rv /// A
              SizedBox(width: 10),
              Visibility(
                  child: SizedBox(
                      width: 100,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: _Rv5,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Rv [m²K/W]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  visible: _visibleRv5),
            ]),

            Visibility(child: SizedBox(height: 10), visible: _visibleRv5),

            Row(
              children: [
                SizedBox(width: 92),
                Visibility(
                    child: SizedBox(
                        width: 255,
                        child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9.]+')),
                            ],
                            controller: _A5,
                            cursorColor: Colors.black,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              labelText: "Summe der Lüftungsöffnungen A",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ))),
                    visible: _visibleRv5),
              ],
            ),

////////////////////////////////////////////////////Dropdown Schicht 6/////////////
            Visibility(child: SizedBox(height: 25), visible: visibledp6),
            Visibility(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Text("Schicht 6:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(width: 23),

/////////////////////
                    ///
                    ///
                    DropdownButton<String>(
                      value: bautyp6,
                      items: SchichtenKat.map(
                          (SchichtenKat) => DropdownMenuItem<String>(
                                value: SchichtenKat,
                                child: Text(SchichtenKat,
                                    style: TextStyle(fontSize: 18)),
                              )).toList(),
                      onChanged: (bautyp6) => selected6(bautyp6),
                      hint: Text('Baustofftyp'),
                    ),
                  ]),
                ),
                visible: visibledp6),

/////////////////////
            ///
//
            Visibility(
                child: Visibility(
                    child: Row(children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: DropdownButton<String>(
                          value: baustoff6,
                          items: data6,
                          onChanged: (data6) =>
                              setState(() => baustoff6 = data6),
                          hint: Text(
                              'Baustoff                                        '),
                        ),
                      ),
                      SizedBox(width: 25),
                      SizedBox(
                          width: 90,
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9.]+')),
                              ],
                              controller: Dicke6,
                              cursorColor: Colors.black,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                labelText: "Dicke [m]",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                              ))),
                    ]),
                    visible: _baudicke6),
                visible: visibledp6),
          ]),
          visible: _isvisible1),

/////////////////////////Ru

      Row(children: [
        SizedBox(width: 92),
        Visibility(
            child: SizedBox(
                width: 100,
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9.]+')),
                    ],
                    controller: _Ru6,
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      labelText: "Ru [m²K/W]",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                    ))),
            visible: _visibleRu6),

/////////////////Rv /// A
        SizedBox(width: 10),
        Visibility(
            child: SizedBox(
                width: 100,
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9.]+')),
                    ],
                    controller: _Rv6,
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      labelText: "Rv [m²K/W]",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                    ))),
            visible: _visibleRv6),
      ]),

      Visibility(child: SizedBox(height: 10), visible: _visibleRv6),

      Row(
        children: [
          SizedBox(width: 92),
          Visibility(
              child: SizedBox(
                  width: 255,
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9.]+')),
                      ],
                      controller: _A6,
                      cursorColor: Colors.black,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        labelText: "Summe der Lüftungsöffnungen A",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ))),
              visible: _visibleRv6),
        ],
      ),

      Visibility(child: SizedBox(height: 20), visible: _visibleRv6),

      /////////////////////////////////////////////////////Tabelle ruhende Luftschicht/////////////////////////

      SizedBox(height: 20),
      Visibility(
          child: Container(
              height: 200,
              width: 335,
              decoration: BoxDecoration(
                  border: Border.all(
                width: 2,
              )),
              child: InteractiveViewer(
                  panEnabled: true,
                  boundaryMargin: EdgeInsets.all(80),
                  minScale: 0.5,
                  maxScale: 4,
                  child: Container(
                    height: 300,
                    width: 325,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/Bibliothek/ruhende Luftschicht Tabelle.png",
                            ),
                            alignment: Alignment.center)),
                  ))),
          visible: _visibletable),

////////////////////////////////////////////Eigene Schicht 1/////////////////////////////////////
      Visibility(
          child: Column(children: [
            SizedBox(height: 15),
            Align(
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  Text("Schicht 1:",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(width: 15),
                  SizedBox(
                      width: 90,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: Dicke1,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Dicke [m]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  SizedBox(width: 15),
                  SizedBox(
                      width: 165,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: WaermeLF1,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "WärmeLF λ [W/mK]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          )))
                ])),

////////////////////////////////////////////Eigene Schicht 2/////////////////////////////////////
            SizedBox(height: 15),
            Align(
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  Text("Schicht 2:",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(width: 15),
                  SizedBox(
                      width: 90,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: Dicke2,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Dicke [m]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  SizedBox(width: 15),
                  SizedBox(
                      width: 165,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: WaermeLF2,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "WärmeLF λ [W/mK]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          )))
                ])),

////////////////////////////////////////////Eigene Schicht 3/////////////////////////////////////
            SizedBox(height: 15),
            Align(
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  Text("Schicht 3:",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(width: 15),
                  SizedBox(
                      width: 90,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: Dicke3,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "Dicke [m]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          ))),
                  SizedBox(width: 15),
                  SizedBox(
                      width: 165,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[0-9.]+')),
                          ],
                          controller: WaermeLF3,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            labelText: "WärmeLF λ [W/mK]",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                          )))
                ])),

////////////////////////////////////////////Eigene Schicht 4/////////////////////////////////////
            SizedBox(height: 15),
            Visibility(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Text("Schicht 4:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(width: 15),
                    SizedBox(
                        width: 90,
                        child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9.]+')),
                            ],
                            controller: Dicke4,
                            cursorColor: Colors.black,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              labelText: "Dicke [m]",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ))),
                    SizedBox(width: 15),
                    SizedBox(
                        width: 165,
                        child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9.]+')),
                            ],
                            controller: WaermeLF4,
                            cursorColor: Colors.black,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              labelText: "WärmeLF λ [W/mK]",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            )))
                  ])),
              visible: visibledp4,
            ),

////////////////////////////////////////////Eigene Schicht 5/////////////////////////////////////
            SizedBox(height: 15),
            Visibility(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(children: [
                      Text("Schicht 5:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(width: 15),
                      SizedBox(
                          width: 90,
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9.]+')),
                              ],
                              controller: Dicke5,
                              cursorColor: Colors.black,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                labelText: "Dicke [m]",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                              ))),
                      SizedBox(width: 15),
                      SizedBox(
                          width: 165,
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9.]+')),
                              ],
                              controller: WaermeLF5,
                              cursorColor: Colors.black,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                labelText: "WärmeLF λ [W/mK]",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                              )))
                    ])),
                visible: visibledp5),

////////////////////////////////////////////Eigene Schicht 6/////////////////////////////////////
            SizedBox(height: 15),
            Visibility(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(children: [
                      Text("Schicht 6:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(width: 15),
                      SizedBox(
                          width: 90,
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9.]+')),
                              ],
                              controller: Dicke6,
                              cursorColor: Colors.black,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                labelText: "Dicke [m]",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                              ))),
                      SizedBox(width: 15),
                      SizedBox(
                          width: 165,
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9.]+')),
                              ],
                              controller: WaermeLF6,
                              cursorColor: Colors.black,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                labelText: "WärmeLF λ [W/mK]",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                              )))
                    ])),
                visible: visibledp6)
          ]),
          visible: _isvisible2),
/////////////////////////////

      SizedBox(height: 10),
      Divider(color: Colors.black),
      SizedBox(height: 10),

//////////////////////////////////////////////////////Wärmestromrichtung////////////////////////////////

////BILD
      Align(
          alignment: Alignment.topLeft,
          child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Text('3. Wärmestromrichtung',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )))),
      SizedBox(height: 10),
      Container(
        height: 250,
        width: 425,
        decoration: BoxDecoration(
            border: Border.all(
          width: 2,
        )),
        child: InteractiveViewer(
            panEnabled: true,
            boundaryMargin: EdgeInsets.all(80),
            minScale: 0.5,
            maxScale: 4,
            child: Container(
              height: 275,
              width: 450,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/Wärmestromrichtung.png",
                      ),
                      alignment: Alignment.center)),
            )),
      ),

//////////////////////////////////////Dropdown RSI////////

      SizedBox(height: 15),
      Align(
        alignment: Alignment.centerLeft,
        child: EasyRichText(
          "a.	Wärmeübergangswiderstand innen (Rsi)",
          defaultStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          patternList: [
            EasyRichTextPattern(
                targetString: 'si',
                subScript: true,
                stringBeforeTarget: 'R',
                matchWordBoundaries: false,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),

////////////////////////////Rsi
      SizedBox(height: 10),
      Row(children: [
        SizedBox(width: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: DropdownButton<String>(
            value: Rsi,
            items: Rsi_list.map((Rsi_list) => DropdownMenuItem<String>(
                  value: Rsi_list,
                  child: Text(Rsi_list, style: TextStyle(fontSize: 18)),
                )).toList(),
            onChanged: (value) {
              setState(() {
                Rsi = value.toString();
              });
            },
            hint: EasyRichText(
              "Rsi",
              defaultStyle: TextStyle(fontSize: 16),
              patternList: [
                EasyRichTextPattern(
                    targetString: 'si',
                    subScript: true,
                    stringBeforeTarget: 'R',
                    matchWordBoundaries: false,
                    style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
        SizedBox(width: 10),
        Text('[m²K/W]', style: TextStyle(fontSize: 14)),
      ]),
      SizedBox(height: 15),

//////////////////////////////////Dropdown RSE////////

      Align(
        alignment: Alignment.centerLeft,
        child: EasyRichText(
          "b.	Wärmeübergangswiderstand außen (Rse)",
          defaultStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          patternList: [
            EasyRichTextPattern(
                targetString: 'se',
                subScript: true,
                stringBeforeTarget: 'R',
                matchWordBoundaries: false,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      SizedBox(height: 10),

////////////////Rse
      Row(children: [
        SizedBox(width: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: DropdownButton<String>(
            value: (bautyp1 == 'stark belüftete Luftschicht' ||
                    bautyp2 == 'stark belüftete Luftschicht' ||
                    bautyp3 == 'stark belüftete Luftschicht' ||
                    bautyp4 == 'stark belüftete Luftschicht' ||
                    bautyp5 == 'stark belüftete Luftschicht' ||
                    bautyp6 == 'stark belüftete Luftschicht')
                ? Rse = Rsi
                : Rse,
            items: _Rs,
            onChanged: (value) {
              setState(() {
                Rse = value.toString();
              });
            },
            hint: EasyRichText(
              "Rse",
              defaultStyle: TextStyle(fontSize: 16),
              patternList: [
                EasyRichTextPattern(
                    targetString: 'se',
                    subScript: true,
                    stringBeforeTarget: 'R',
                    matchWordBoundaries: false,
                    style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
        SizedBox(width: 10),
        Text('[m²K/W]', style: TextStyle(fontSize: 14)),
      ]),

//////////////////////////////////////////////4. Ergebnisse /////////////////////////////////
      SizedBox(height: 10),
      Divider(color: Colors.black),
      SizedBox(height: 10),
      Align(
          alignment: Alignment.topLeft,
          child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Text('4. Ergebnisse',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )))),
      SizedBox(height: 15),

//////////////////////////////R_ges

      Row(children: [
        EasyRichText(
          "Rges =",
          defaultStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          patternList: [
            EasyRichTextPattern(
                targetString: 'ges',
                subScript: true,
                stringBeforeTarget: 'R',
                matchWordBoundaries: false,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(width: 10),
        R_ges != null
            ? Text("$R_gesr",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            : Container(),
        SizedBox(width: 10),
        Text('[m²K/W]', style: TextStyle(fontSize: 14)),
      ]),

/////////////////////////R_T
      SizedBox(height: 15),
      Row(children: [
        EasyRichText(
          "RT    =",
          defaultStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          patternList: [
            EasyRichTextPattern(
                targetString: 'T',
                subScript: true,
                stringBeforeTarget: 'R',
                matchWordBoundaries: false,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(width: 10),
        R_T != null
            ? Text("$R_Tr",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            : Container(),
        SizedBox(width: 10),
        Text('[m²K/W]', style: TextStyle(fontSize: 14)),
      ]),

/////////////////U-Wert
      SizedBox(height: 15),
      Row(children: [
        Text("U       =",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(width: 10),
        U_Wert != null
            ? Text("$U_Wertr",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            : Container(),
        SizedBox(width: 10),
        Text('[W/m²K]', style: TextStyle(fontSize: 14)),
      ]),

////////////////////////////////////////Berechnenen Button////////////////////////////////
      SizedBox(height: 15),
      Align(
        alignment: Alignment.centerRight,
        child: ElevatedButton(
            onPressed: () => setState(() {
                  if (_checked1 == true) {
                    if (bautyp1 == 'stark belüftete Luftschicht') {
                      R1 = 0.0;
                    } else if (bautyp1 == 'ruhende Luftschicht') {
                      R1 = double.parse(_Ru1.text);
                    } else if (bautyp1 == 'schwach belüftete Luftschicht') {
                      Ru1 = double.parse(_Ru1.text);
                      A1 = double.parse(_A1.text);
                      Rv1 = double.parse(_Rv1.text);

                      R1 = ((1500.0 - A1) / 1000.0) * Ru1 +
                          ((A1 - 500.0) / 1000.0) * Rv1;
                    } else {
                      lambda1 = double.parse(baustoff1!);
                      d1 = double.parse(Dicke1.text);
                      R1 = d1 / lambda1;
                    }
                    //
                    if (bautyp1 == 'stark belüftete Luftschicht' ||
                        bautyp2 == 'stark belüftete Luftschicht') {
                      R2 = 0.0;
                    } else if (bautyp2 == 'ruhende Luftschicht') {
                      R2 = double.parse(_Ru2.text);
                    } else if (bautyp2 == 'schwach belüftete Luftschicht') {
                      Ru2 = double.parse(_Ru2.text);
                      A2 = double.parse(_A2.text);
                      Rv2 = double.parse(_Rv2.text);

                      R2 = ((1500.0 - A2) / 1000.0) * Ru2 +
                          ((A2 - 500.0) / 1000.0) * Rv2;
                    } else {
                      lambda2 = double.parse(baustoff2!);
                      d2 = double.parse(Dicke2.text);
                      R2 = d2 / lambda2;
                    }
                    //

                    if (bautyp1 == 'stark belüftete Luftschicht' ||
                        bautyp2 == 'stark belüftete Luftschicht' ||
                        bautyp3 == 'stark belüftete Luftschicht') {
                      R3 = 0.0;
                    } else if (bautyp3 == 'ruhende Luftschicht') {
                      R3 = double.parse(_Ru3.text);
                    } else if (bautyp3 == 'schwach belüftete Luftschicht') {
                      Ru3 = double.parse(_Ru3.text);
                      A3 = double.parse(_A3.text);
                      Rv3 = double.parse(_Rv3.text);

                      R3 = ((1500.0 - A3) / 1000.0) * Ru3 +
                          ((A3 - 500.0) / 1000.0) * Rv3;
                    } else {
                      lambda3 = double.parse(baustoff3!);
                      d3 = double.parse(Dicke3.text);
                      R3 = d3 / lambda3;
                    }
                    //

                    if (bautyp4 == null) {
                      R4 = 0;
                    } else if (bautyp1 == 'stark belüftete Luftschicht' ||
                        bautyp2 == 'stark belüftete Luftschicht' ||
                        bautyp3 == 'stark belüftete Luftschicht' ||
                        bautyp4 == 'stark belüftete Luftschicht') {
                      R4 = 0.0;
                    } else if (bautyp4 == 'ruhende Luftschicht') {
                      R4 = double.parse(_Ru4.text);
                    } else if (bautyp4 == 'schwach belüftete Luftschicht') {
                      Ru4 = double.parse(_Ru4.text);
                      A4 = double.parse(_A4.text);
                      Rv4 = double.parse(_Rv4.text);

                      R4 = ((1500.0 - A4) / 1000.0) * Ru4 +
                          ((A4 - 500.0) / 1000.0) * Rv4;
                    } else {
                      lambda4 = double.parse(baustoff4!);
                      d4 = double.parse(Dicke4.text);
                      R4 = d4 / lambda4;
                    }
                    //

                    if (bautyp5 == null) {
                      R5 = 0;
                    } else if (bautyp1 == 'stark belüftete Luftschicht' ||
                        bautyp2 == 'stark belüftete Luftschicht' ||
                        bautyp3 == 'stark belüftete Luftschicht' ||
                        bautyp4 == 'stark belüftete Luftschicht' ||
                        bautyp5 == 'stark belüftete Luftschicht') {
                      R5 = 0.0;
                    } else if (bautyp5 == 'ruhende Luftschicht') {
                      R5 = double.parse(_Ru5.text);
                    } else if (bautyp5 == 'schwach belüftete Luftschicht') {
                      Ru5 = double.parse(_Ru5.text);
                      A5 = double.parse(_A5.text);
                      Rv5 = double.parse(_Rv5.text);

                      R5 = ((1500.0 - A5) / 1000.0) * Ru5 +
                          ((A5 - 500.0) / 1000.0) * Rv5;
                    } else {
                      lambda5 = double.parse(baustoff5!);
                      d5 = double.parse(Dicke5.text);
                      R5 = d5 / lambda5;
                    }
                    //
                    if (bautyp6 == null) {
                      R6 = 0;
                    } else if (bautyp1 == 'stark belüftete Luftschicht' ||
                        bautyp2 == 'stark belüftete Luftschicht' ||
                        bautyp3 == 'stark belüftete Luftschicht' ||
                        bautyp4 == 'stark belüftete Luftschicht' ||
                        bautyp5 == 'stark belüftete Luftschicht' ||
                        bautyp6 == 'stark belüftete Luftschicht') {
                      R6 = 0.0;
                    } else if (bautyp6 == 'ruhende Luftschicht') {
                      R4 = double.parse(_Ru6.text);
                    } else if (bautyp6 == 'schwach belüftete Luftschicht') {
                      Ru6 = double.parse(_Ru6.text);
                      A6 = double.parse(_A6.text);
                      Rv6 = double.parse(_Rv6.text);

                      R6 = ((1500.0 - A6) / 1000.0) * Ru6 +
                          ((A6 - 500.0) / 1000.0) * Rv6;
                    } else {
                      lambda6 = double.parse(baustoff6!);
                      d6 = double.parse(Dicke6.text);
                      R6 = d6 / lambda6;
                    }
                  }
                  if (_checked2 == true) {
                    d1 = double.parse(Dicke1.text);
                    lambda1 = double.parse(WaermeLF1.text);
                    d2 = double.parse(Dicke2.text);
                    lambda2 = double.parse(WaermeLF2.text);
                    d3 = double.parse(Dicke3.text);
                    lambda3 = double.parse(WaermeLF3.text);
                    if (Dicke4.text.isNotEmpty) {
                      d4 = double.parse(Dicke4.text);
                      lambda4 = double.parse(WaermeLF4.text);
                      d5 = 0;
                      lambda5 = 1;
                      d6 = 0;
                      lambda6 = 1;
                    } else if (Dicke5.text.isNotEmpty) {
                      d4 = double.parse(Dicke4.text);
                      lambda4 = double.parse(WaermeLF4.text);
                      d5 = double.parse(Dicke5.text);
                      lambda5 = double.parse(WaermeLF5.text);
                      d6 = 0;
                      lambda6 = 1;
                    } else if (Dicke6.text.isNotEmpty) {
                      d4 = double.parse(Dicke4.text);
                      lambda4 = double.parse(WaermeLF4.text);
                      d5 = double.parse(Dicke5.text);
                      lambda5 = double.parse(WaermeLF5.text);
                      d6 = double.parse(Dicke6.text);
                      lambda6 = double.parse(WaermeLF6.text);
                    } else {
                      d4 = 0;
                      d5 = 0;
                      d6 = 0;
                      lambda4 = 1;
                      lambda5 = 1;
                      lambda6 = 1;
                    }

                    R1 = d1 / lambda1;
                    R2 = d2 / lambda2;
                    R3 = d3 / lambda3;
                    R4 = d4 / lambda4;
                    R5 = d5 / lambda5;
                    R6 = d6 / lambda6;
                  }

                  R_ges = R1 + R2 + R3 + R4 + R5 + R6;
                  R_gesr = roundDouble(R_ges!, 2);

                  var R_si = double.parse(Rsi!);
                  var R_se = double.parse(Rse!);

                  R_T = R_si + R_gesr! + R_se;
                  R_Tr = roundDouble(R_T!, 2);

                  U_Wert = 1 / R_T!;
                  U_Wertr = roundDouble(U_Wert!, 2);
                }),
            child: Text('Berechne')),
      ),
    ]);
  }
}
