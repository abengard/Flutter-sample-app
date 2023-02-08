import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sample_app/widgets.dart';

class Bibliothek extends StatefulWidget {
  final Datasheet1;
  final Datasheet2;
  final Datasheet3;
  final Datasheet4;
  final Datasheet5;
  final Datasheet6;
  final Datasheet7;
  final Datasheet8;
  final Datasheet9;

  Bibliothek({
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
  _BibliothekState createState() => _BibliothekState(
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

class _BibliothekState extends State<Bibliothek> {
  final Datasheet1;
  final Datasheet2;
  final Datasheet3;
  final Datasheet4;
  final Datasheet5;
  final Datasheet6;
  final Datasheet7;
  final Datasheet8;
  final Datasheet9;

  _BibliothekState(
    this.Datasheet1,
    this.Datasheet2,
    this.Datasheet3,
    this.Datasheet4,
    this.Datasheet5,
    this.Datasheet6,
    this.Datasheet7,
    this.Datasheet8,
    this.Datasheet9,
  );

  double roundDouble(double value, int places) {
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  @override
  Widget build(BuildContext context) {
    List<DataRow> Datasheet1List = [];
    for (var i = 1; i < Datasheet1.length; i++) {
      Datasheet1List.add(DataRow(cells: [
        DataCell(
          Text(Datasheet1[i][0].toString()),
        ),
        DataCell(Center(
          child: Text(Datasheet1[i][1].toString()),
        )),
        DataCell(Center(
          child: Text(roundDouble(Datasheet1[i][2], 2).toString()),
        )),
        DataCell(Center(
          child: Text(Datasheet1[i][3].toString()),
        )),
      ]));
    }

    List<DataRow> Datasheet2List = [];
    for (var i = 1; i < Datasheet2.length; i++) {
      Datasheet2List.add(DataRow(cells: [
        DataCell(
          Text(Datasheet2[i][0].toString()),
        ),
        DataCell(Center(
          child: Text(Datasheet2[i][1].toString()),
        )),
        DataCell(Center(
          child: Text(roundDouble(Datasheet2[i][2], 2).toString()),
        )),
        DataCell(Center(
          child: Text(Datasheet2[i][3].toString()),
        )),
      ]));
    }

    List<DataRow> Datasheet3List = [];
    for (var i = 1; i < Datasheet3.length; i++) {
      Datasheet3List.add(DataRow(cells: [
        DataCell(
          Text(Datasheet3[i][0].toString()),
        ),
        DataCell(Center(
          child: Text(Datasheet3[i][1].toString()),
        )),
        DataCell(Center(
          child: Text(roundDouble(Datasheet3[i][2], 2).toString()),
        )),
        DataCell(Center(
          child: Text(Datasheet3[i][3].toString()),
        )),
      ]));
    }

    List<DataRow> Datasheet4List = [];
    for (var i = 1; i < Datasheet4.length; i++) {
      Datasheet4List.add(DataRow(cells: [
        DataCell(
          Text(Datasheet4[i][0].toString()),
        ),
        DataCell(Center(
          child: Text(Datasheet4[i][1].toString()),
        )),
        DataCell(Center(
          child: Text(roundDouble(Datasheet4[i][2], 2).toString()),
        )),
        DataCell(Center(
          child: Text(Datasheet4[i][3].toString()),
        )),
      ]));
    }

    List<DataRow> Datasheet5List = [];
    for (var i = 1; i < Datasheet5.length; i++) {
      Datasheet5List.add(DataRow(cells: [
        DataCell(
          Text(Datasheet5[i][0].toString()),
        ),
        DataCell(Center(
          child: Text(Datasheet5[i][1].toString()),
        )),
        DataCell(Center(
          child: Text(roundDouble(Datasheet5[i][2], 2).toString()),
        )),
        DataCell(Center(
          child: Text(Datasheet5[i][3].toString()),
        )),
      ]));
    }

    List<DataRow> Datasheet6List = [];
    for (var i = 1; i < Datasheet6.length; i++) {
      Datasheet6List.add(DataRow(cells: [
        DataCell(
          Text(Datasheet6[i][0].toString()),
        ),
        DataCell(Center(
          child: Text(Datasheet6[i][1].toString()),
        )),
        DataCell(Center(
          child: Text(roundDouble(Datasheet6[i][2], 2).toString()),
        )),
        DataCell(Center(
          child: Text(Datasheet6[i][3].toString()),
        )),
      ]));
    }

    List<DataRow> Datasheet7List = [];
    for (var i = 1; i < Datasheet7.length; i++) {
      Datasheet7List.add(DataRow(cells: [
        DataCell(
          Text(Datasheet7[i][0].toString()),
        ),
        DataCell(Center(
          child: Text(Datasheet7[i][1].toString()),
        )),
        DataCell(Center(
          child: Text(roundDouble(Datasheet7[i][2], 2).toString()),
        )),
        DataCell(Center(
          child: Text(Datasheet7[i][3].toString()),
        )),
      ]));
    }

    List<DataRow> Datasheet8List = [];
    for (var i = 1; i < Datasheet8.length; i++) {
      Datasheet8List.add(DataRow(cells: [
        DataCell(
          Text(Datasheet8[i][0].toString()),
        ),
        DataCell(Center(
          child: Text(Datasheet8[i][1].toString()),
        )),
        DataCell(Center(
          child: Text(roundDouble(Datasheet8[i][2], 2).toString()),
        )),
        DataCell(Center(
          child: Text(Datasheet8[i][3].toString()),
        )),
      ]));
    }

    List<DataRow> Datasheet9List = [];
    for (var i = 1; i < Datasheet9.length; i++) {
      Datasheet9List.add(DataRow(cells: [
        DataCell(
          Text(Datasheet9[i][0].toString()),
        ),
        DataCell(Center(
          child: Text(Datasheet9[i][1].toString()),
        )),
        DataCell(Center(
          child: Text(roundDouble(Datasheet9[i][2], 2).toString()),
        )),
        DataCell(Center(
          child: Text(Datasheet9[i][3].toString()),
        )),
      ]));
    }

    return Scaffold(
        appBar: kopfzeile('Bibliothek', context),
        body: ScrollableWidget(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Datasheet1',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            ScrollableWidget(
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                  label: Text('${Datasheet1[0][0]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet1[0][1]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet1[0][2]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet1[0][3]}'),
                ),
              ], rows: Datasheet1List),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Datasheet2',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            ScrollableWidget(
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                  label: Text('${Datasheet2[0][0]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet2[0][1]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet2[0][2]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet2[0][3]}'),
                ),
              ], rows: Datasheet2List),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Datasheet3',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            ScrollableWidget(
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                  label: Text('${Datasheet3[0][0]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet3[0][1]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet3[0][2]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet3[0][3]}'),
                ),
              ], rows: Datasheet3List),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Datasheet4',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            ScrollableWidget(
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                  label: Text('${Datasheet4[0][0]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet4[0][1]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet4[0][2]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet4[0][3]}'),
                ),
              ], rows: Datasheet4List),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Datasheet5',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            ScrollableWidget(
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                  label: Text('${Datasheet5[0][0]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet5[0][1]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet5[0][2]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet5[0][3]}'),
                ),
              ], rows: Datasheet5List),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Datasheet6',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            ScrollableWidget(
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                  label: Text('${Datasheet6[0][0]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet6[0][1]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet6[0][2]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet6[0][3]}'),
                ),
              ], rows: Datasheet6List),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Datasheet7',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            ScrollableWidget(
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                  label: Text('${Datasheet7[0][0]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet7[0][1]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet7[0][2]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet7[0][3]}'),
                ),
              ], rows: Datasheet7List),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Datasheet8',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            ScrollableWidget(
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                  label: Text('${Datasheet8[0][0]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet8[0][1]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet8[0][2]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet8[0][3]}'),
                ),
              ], rows: Datasheet8List),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Datasheet9',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            ScrollableWidget(
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                  label: Text('${Datasheet9[0][0]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet9[0][1]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet9[0][2]}'),
                ),
                DataColumn(
                  label: Text('${Datasheet9[0][3]}'),
                ),
              ], rows: Datasheet9List),
            ),
          ]),
        ));
  }
}
