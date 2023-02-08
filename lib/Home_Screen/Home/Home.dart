import 'dart:io';
import 'package:sample_app/Home_Screen/Links_Screen/Links.dart';
import 'package:sample_app/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_app/Home_Screen/Home/Home_Listnamen.dart';
import 'package:sample_app/Home_Screen/Themen_Screen/Themen.dart';
import 'package:sample_app/Home_Screen/Themen_Screen/PDF_Reader/api/pdf_api.dart';
import 'package:sample_app/Home_Screen/Themen_Screen/PDF_Reader/page/pdf_viewer_page.dart';
import '../Bibliothek.dart';
import 'package:csv/csv.dart';
import 'dart:core';

class Home extends StatefulWidget {
  const Home(
      {Key? key,
      BuildContext? menuScreenContext,
      bool? hideStatus,
      Null Function()? onScreenHideButtonPressed})
      : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get delegate => null;

  ///////////////////////////////////////////vvv Bibliothek wird eingeladen vvv/////////////////////////
  List<List<dynamic>> Datasheet1 = [];
  loadAssetDatasheet1() async {
    final myDatasheet1 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet1.csv");
    List<List<dynamic>> Datasheet1Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet1);
    print(Datasheet1Table);
    Datasheet1 = Datasheet1Table;
  }

  List<List<dynamic>> Datasheet2 = [];
  loadAssetDatasheet2() async {
    final myDatasheet2 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet2.csv");
    List<List<dynamic>> Datasheet2Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet2);
    print(Datasheet2Table);
    Datasheet2 = Datasheet2Table;
  }

  List<List<dynamic>> Datasheet3 = [];
  loadAssetDatasheet3() async {
    final myDatasheet3 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet3.csv");
    List<List<dynamic>> Datasheet3Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet3);
    print(Datasheet3Table);
    Datasheet3 = Datasheet3Table;
  }

  List<List<dynamic>> Datasheet4 = [];
  loadAssetDatasheet4() async {
    final myDatasheet4 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet4.csv");
    List<List<dynamic>> Datasheet4Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet4);
    print(Datasheet4Table);
    Datasheet4 = Datasheet4Table;
  }

  List<List<dynamic>> Datasheet5 = [];
  loadAssetDatasheet5() async {
    final myDatasheet5 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet5.csv");
    List<List<dynamic>> Datasheet5Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet5);
    print(Datasheet5Table);
    Datasheet5 = Datasheet5Table;
  }

  List<List<dynamic>> Datasheet6 = [];
  loadAssetDatasheet6() async {
    final myDatasheet6 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet6.csv");
    List<List<dynamic>> Datasheet6Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet6);
    print(Datasheet6Table);
    Datasheet6 = Datasheet6Table;
  }

  List<List<dynamic>> Datasheet7 = [];
  loadAssetDatasheet7() async {
    final myDatasheet7 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet7.csv");
    List<List<dynamic>> Datasheet7Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet7);
    print(Datasheet7Table);
    Datasheet7 = Datasheet7Table;
  }

  List<List<dynamic>> Datasheet8 = [];
  loadAssetDatasheet8() async {
    final myDatasheet8 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet8.csv");
    List<List<dynamic>> Datasheet8Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet8);
    print(Datasheet8Table);
    Datasheet8 = Datasheet8Table;
  }

  List<List<dynamic>> Datasheet9 = [];
  loadAssetDatasheet9() async {
    final myDatasheet9 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet9.csv");
    List<List<dynamic>> Datasheet9Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet9);
    print(Datasheet9Table);
    Datasheet9 = Datasheet9Table;
  }

  void openCSV(
          BuildContext context,
          Datasheet1,
          Datasheet2,
          Datasheet3,
          Datasheet4,
          Datasheet5,
          Datasheet6,
          Datasheet7,
          Datasheet8,
          Datasheet9) =>
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Bibliothek(
              Datasheet1: Datasheet1,
              Datasheet2: Datasheet2,
              Datasheet3: Datasheet3,
              Datasheet4: Datasheet4,
              Datasheet5: Datasheet5,
              Datasheet6: Datasheet6,
              Datasheet7: Datasheet7,
              Datasheet8: Datasheet8,
              Datasheet9: Datasheet9)));

////////////////////////////////////vvv Datum Sperre vvv////////////////////////////////////
  final today =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  final WS_SS = DateTime(DateTime.now().year, 09, 15);
  //////////////////////////////////vvv Sommer-Semester vvv//////////////////////
  final DateSS1 = DateTime(DateTime.now().year, 03, 01);
  final DateSS2 = DateTime(DateTime.now().year, 04, 01);
  final DateSS3 = DateTime(DateTime.now().year, 05, 01);
  final DateSS4 = DateTime(DateTime.now().year, 06, 01);
  final DateSS5 = DateTime(DateTime.now().year, 07, 01);

  //////////////////////////////////vvv Winter-Semester vvv//////////////////////

  final DateWS1 = DateTime(DateTime.now().year, 10, 01);
  final DateWS2 = DateTime(DateTime.now().year, 11, 01);
  final DateWS3 = DateTime(DateTime.now().year, 12, 01);
  final DateWS4 = DateTime(DateTime.now().year, 01, 01);
  final DateWS5 = DateTime(DateTime.now().year, 02, 01);

  late int icount;

  void vision(
    BuildContext context,
    icount,
  ) =>
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Themen()));

/////////////////////////////////////////////////////////////////////////////////////////

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        leading: FlutterLogo(size: 5),
        // Image.asset(
        //   "assets/Icons/",
        //   width: 30,
        //   height: 30,
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
            color: Colors.black,
          ),
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                    (Route<dynamic> route) => false);
              },
              color: Colors.black)
        ],
      ),
      body: ListView.builder(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: Home_Listnamenlist.length,
          itemBuilder: (context, index) {
            Home_Listnamen home_Listnamen = Home_Listnamenlist[index];
            return Card(
              child: ListTile(
                title: Text(home_Listnamen.title),
                leading: home_Listnamen.icon,
                trailing: Icon(Icons.arrow_forward),
                onTap: () async {
                  if (home_Listnamen.title == 'Themen') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Themen()));
///////////////////////////////////vvv Datum Sperre für Vorlesungen vvv/////////////////////////////
                    /*
                    if (today.isAfter(WS_SS) || today.isBefore(DateSS1)) {
                      if (today.isAfter(DateWS1) ||
                          today.isAtSameMomentAs(DateWS1)) {
                        icount = 3;
                        vision(
                          context,
                          icount,
                        );
                      }
                      if (today.isAfter(DateWS2) ||
                          today.isAtSameMomentAs(DateWS2)) {
                        icount = 6;
                        vision(
                          context,
                          icount,
                        );
                      }
                      if (today.isAfter(DateWS3) ||
                          today.isAtSameMomentAs(DateWS3)) {
                        icount = 9;
                        vision(
                          context,
                          icount,
                        );
                      }
                      if (today.isBefore(DateSS1)) {
                        if (today.isAfter(DateWS4) ||
                            today.isAtSameMomentAs(DateWS4)) {
                          icount = 12;
                          vision(
                            context,
                            icount,
                          );
                        }
                        if (today.isAfter(DateWS5) ||
                            today.isAtSameMomentAs(DateWS5)) {
                          icount = BPT_Listnamenlist.length;
                          vision(
                            context,
                            icount,
                          );
                        }
                      }
                    }
                    if (today.isBefore(WS_SS)) {
                      if (today.isAfter(DateSS1) ||
                          today.isAtSameMomentAs(DateSS1)) {
                        icount = 3;
                        vision(
                          context,
                          icount,
                        );
                      }
                      if (today.isAfter(DateSS2) ||
                          today.isAtSameMomentAs(DateSS2)) {
                        icount = 6;
                        vision(
                          context,
                          icount,
                        );
                      }
                      if (today.isAfter(DateSS3) ||
                          today.isAtSameMomentAs(DateSS3)) {
                        icount = 9;
                        vision(
                          context,
                          icount,
                        );
                      }

                      if (today.isAfter(DateSS4) ||
                          today.isAtSameMomentAs(DateSS4)) {
                        icount = 12;
                        vision(
                          context,
                          icount,
                        );
                      }
                      if (today.isAfter(DateSS5) ||
                          today.isAtSameMomentAs(DateSS5)) {
                        icount = BPT_Listnamenlist.length;
                        vision(
                          context,
                          icount,
                        );
                      }
                    }
                    */

/////////////////////////////////////////////////////////////////////////////////////////////
                  }
                  if (home_Listnamen.title == 'Bibliothek') {
                    await loadAssetDatasheet1();
                    await loadAssetDatasheet2();
                    await loadAssetDatasheet3();
                    await loadAssetDatasheet4();
                    await loadAssetDatasheet5();
                    await loadAssetDatasheet6();
                    await loadAssetDatasheet7();
                    await loadAssetDatasheet8();
                    await loadAssetDatasheet9();

                    openCSV(
                        context,
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
                  if (home_Listnamen.title == 'Links') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Links()));
                  }
                },
              ),
            );
          }),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////vvv Suchfunktion vvv/////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Themen',
    'Ordner 1',
    'Vorlesung 1',
    'Vorlesung 2',
    'Ordner 2',
    'Unter-Ordner 2.1',
    'Vorlesung 3',
    'Hausaufgabe 1',
    'Unter-Ordner 2.2',
    'Vorlesung 4',
    'Hausaufgabe 2',
    'Unter-Ordner 2.3',
    'Vorlesung 5',
    'Ordner 3',
    'Vorlesung 6',
    'Hausaufgabe 3',
    'Ordner 4',
    'Unter-Ordner 4.1',
    'Vorlesung 7',
    'Unter-Ordner 4.2',
    'Vorlesung 8',
    'Hausaufgabe 4',
    'Bibliothek',
    'Links',
  ];

  //////////////////////////////////////////CSV TABELLE//////////

  List<List<dynamic>> Datasheet1 = [];
  loadAssetDatasheet1() async {
    final myDatasheet1 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet1.csv");
    List<List<dynamic>> Datasheet1Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet1);
    print(Datasheet1Table);
    Datasheet1 = Datasheet1Table;
  }

  List<List<dynamic>> Datasheet2 = [];
  loadAssetDatasheet2() async {
    final myDatasheet2 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet2.csv");
    List<List<dynamic>> Datasheet2Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet2);
    print(Datasheet2Table);
    Datasheet2 = Datasheet2Table;
  }

  List<List<dynamic>> Datasheet3 = [];
  loadAssetDatasheet3() async {
    final myDatasheet3 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet3.csv");
    List<List<dynamic>> Datasheet3Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet3);
    print(Datasheet3Table);
    Datasheet3 = Datasheet3Table;
  }

  List<List<dynamic>> Datasheet4 = [];
  loadAssetDatasheet4() async {
    final myDatasheet4 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet4.csv");
    List<List<dynamic>> Datasheet4Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet4);
    print(Datasheet4Table);
    Datasheet4 = Datasheet4Table;
  }

  List<List<dynamic>> Datasheet5 = [];
  loadAssetDatasheet5() async {
    final myDatasheet5 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet5.csv");
    List<List<dynamic>> Datasheet5Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet5);
    print(Datasheet5Table);
    Datasheet5 = Datasheet5Table;
  }

  List<List<dynamic>> Datasheet6 = [];
  loadAssetDatasheet6() async {
    final myDatasheet6 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet6.csv");
    List<List<dynamic>> Datasheet6Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet6);
    print(Datasheet6Table);
    Datasheet6 = Datasheet6Table;
  }

  List<List<dynamic>> Datasheet7 = [];
  loadAssetDatasheet7() async {
    final myDatasheet7 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet7.csv");
    List<List<dynamic>> Datasheet7Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet7);
    print(Datasheet7Table);
    Datasheet7 = Datasheet7Table;
  }

  List<List<dynamic>> Datasheet8 = [];
  loadAssetDatasheet8() async {
    final myDatasheet8 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet8.csv");
    List<List<dynamic>> Datasheet8Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet8);
    print(Datasheet8Table);
    Datasheet8 = Datasheet8Table;
  }

  List<List<dynamic>> Datasheet9 = [];
  loadAssetDatasheet9() async {
    final myDatasheet9 =
        await rootBundle.loadString("assets/Bibliothek/Datasheet9.csv");
    List<List<dynamic>> Datasheet9Table =
        const CsvToListConverter(fieldDelimiter: ';').convert(myDatasheet9);
    print(Datasheet9Table);
    Datasheet9 = Datasheet9Table;
  }

  /////////////////////////////////////////////////////////////////////////////////

  get onLongPress => null;

  get onTap => null;
  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        ),
      ];

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  final today =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  final aDate = DateTime(2023, 06, 01);
  late int icount;

  void vision(
    BuildContext context,
    icount,
  ) =>
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Themen()));
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> Vorschlag = searchResults.where((searchResults) {
      final result = searchResults.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: Vorschlag.length,
        itemBuilder: (context, index) {
          final Vorschlage = Vorschlag[index];

          return ListTile(
              title: Text(Vorschlage),
              onTap: () async {
                query = Vorschlag[index];
                if (Vorschlag[index] == 'abc') {
                  /*
                if (today.isBefore(aDate)) {
                  icount = 2;
                  vision(context, icount);
                }
                if (today.isAfter(aDate)) {
                  vision(
                    context,
                    icount,
                  );
                }
                */
                }
                if (Vorschlag[index] == 'Themen') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Themen()));
                }

                if (Vorschlag[index] == 'Ordner 1') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Folder1()));
                }

                if (Vorschlag[index] == 'Vorlesung 1') {
                  final path = 'assets/PDF/Vorlesung 1.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Vorlesung 2') {
                  final path = 'assets/PDF/Vorlesung 2.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Ordner 2') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Folder2()));
                }

                if (Vorschlag[index] == 'Unter-Ordner 2.1') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Subfolder21()));
                }

                if (Vorschlag[index] == 'Vorlesung 3') {
                  final path = 'assets/PDF/Vorlesung 3.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Hausaufgabe 1') {
                  final path = 'assets/PDF/Hausaufgaben 1.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Unter-Ordner 2.2') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Subfolder22()));
                }

                if (Vorschlag[index] == 'Vorlesung 4') {
                  final path = 'assets/PDF/Vorlesung 4.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Hausaufgabe 2') {
                  final path = 'assets/PDF/Hausaufgaben 2.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Unter-Ordner 2.3') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Subfolder23()));
                }

                if (Vorschlag[index] == 'Vorlesung 5') {
                  final path = 'assets/PDF/Vorlesung 5.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Ordner 3') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Folder3()));
                }

                if (Vorschlag[index] == 'Vorlesung 6') {
                  final path = 'assets/PDF/Vorlesung 6.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Hausaufgabe 3') {
                  final path = 'assets/PDF/Hausaufgaben 3.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Ordner 4') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Folder4()));
                }

                if (Vorschlag[index] == 'Unter-Ordner 4.1') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Subfolder41()));
                }

                if (Vorschlag[index] == 'Vorlesung 7') {
                  final path = 'assets/PDF/Vorlesung 7.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Unter-Ordner 4.2') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Subfolder42()));
                }

                if (Vorschlag[index] == 'Vorlesung 8') {
                  final path = 'assets/PDF/Vorlesung 8.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Hausaufgabe 4') {
                  final path = 'assets/PDF/Hausaufgaben 4.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                }

                if (Vorschlag[index] == 'Bibliothek') {
                  await loadAssetDatasheet1();
                  await loadAssetDatasheet2();
                  await loadAssetDatasheet3();
                  await loadAssetDatasheet4();
                  await loadAssetDatasheet5();
                  await loadAssetDatasheet6();
                  await loadAssetDatasheet7();
                  await loadAssetDatasheet8();
                  await loadAssetDatasheet9();

                  openCSV(
                      context,
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

                if (Vorschlag[index] == 'Links') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Links()));
                }
              });
        });
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)));

  void openCSV(
          BuildContext context,
          Datasheet1,
          Datasheet2,
          Datasheet3,
          Datasheet4,
          Datasheet5,
          Datasheet6,
          Datasheet7,
          Datasheet8,
          Datasheet9) =>
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Bibliothek(
              Datasheet1: Datasheet1,
              Datasheet2: Datasheet2,
              Datasheet3: Datasheet3,
              Datasheet4: Datasheet4,
              Datasheet5: Datasheet5,
              Datasheet6: Datasheet6,
              Datasheet7: Datasheet7,
              Datasheet8: Datasheet8,
              Datasheet9: Datasheet9)));
}



 /*
                if (today.isBefore(aDate)) {
                  icount = 2;
                  vision(context, icount);
                }
                if (today.isAfter(aDate)) {
                  vision(
                    context,
                    icount,
                  );
                }
                */