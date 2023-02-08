import 'package:sample_app/Rechner/Rechner_Funktion/uw_rechner.dart';
import 'package:sample_app/main.dart';
import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Rechner/Rechner_Screen/Rechner_Listnamen.dart';
import 'package:sample_app/widgets.dart';
import 'package:flutter/services.dart';

class RechnerHQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Rechner',
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
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => mynavibar()),
                (Route<dynamic> route) => false,
              );
            },
            color: Colors.black,
          ),
        ],
      ),
      body: ListView.builder(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: RechnerKatlist.length,
          itemBuilder: (context, index) {
            RechnerKat rechnerKat = RechnerKatlist[index];
            return Card(
              child: ListTile(
                  title: Text(rechnerKat.title),
                  leading: rechnerKat.icon,
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () async {
                    if (rechnerKat.title == 'Ordner 1') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FolderCalc1()));
                    }
                    if (rechnerKat.title == 'Ordner 2') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FolderCalc2()));
                    }
                    if (rechnerKat.title == 'Ordner 3') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FolderCalc3()));
                    }
                  }),
            );
          }),
    );
  }
}

/////////////////////////////////////////////////////////////////////////
//////////////////////////////////Ordner 1 Rechner///////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

class FolderCalc1 extends StatelessWidget {
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

  void openUWR(
    BuildContext context,
    Datasheet1,
    Datasheet2,
    Datasheet3,
    Datasheet4,
    Datasheet5,
    Datasheet6,
    Datasheet7,
    Datasheet8,
    Datasheet9,
  ) =>
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => UW_Rechner(
                Datasheet1: Datasheet1,
                Datasheet2: Datasheet2,
                Datasheet3: Datasheet3,
                Datasheet4: Datasheet4,
                Datasheet5: Datasheet5,
                Datasheet6: Datasheet6,
                Datasheet7: Datasheet7,
                Datasheet8: Datasheet8,
                Datasheet9: Datasheet9,
              )));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Ordner 1', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: FolderCalc1_listnamenlist.length,
            itemBuilder: (context, index) {
              FolderCalc1_listnamen folderCalc1_listnamen =
                  FolderCalc1_listnamenlist[index];
              return Card(
                  child: ListTile(
                      title: Text(folderCalc1_listnamen.title),
                      leading: folderCalc1_listnamen.icon,
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (folderCalc1_listnamen.title == 'Ordner 1 Rechner') {
                          await loadAssetDatasheet1();
                          await loadAssetDatasheet2();
                          await loadAssetDatasheet3();
                          await loadAssetDatasheet4();
                          await loadAssetDatasheet5();
                          await loadAssetDatasheet6();
                          await loadAssetDatasheet7();
                          await loadAssetDatasheet8();
                          await loadAssetDatasheet9();

                          openUWR(
                            context,
                            Datasheet1,
                            Datasheet2,
                            Datasheet3,
                            Datasheet4,
                            Datasheet5,
                            Datasheet6,
                            Datasheet7,
                            Datasheet8,
                            Datasheet9,
                          );
                        }
                      }));
            }));
  }
}

/////////////////////////////////////////////////////////////////////////
//////////////////////////////////Ordner 2 Rechner///////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

class FolderCalc2 extends StatelessWidget {
  const FolderCalc2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Ordner 2', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: FolderCalc2_listnamenlist.length,
            itemBuilder: (context, index) {
              FolderCalc2_listnamen folderCalc2_listnamen =
                  FolderCalc2_listnamenlist[index];
              return Card(
                  child: ListTile(
                      title: Text(folderCalc2_listnamen.title),
                      leading: folderCalc2_listnamen.icon,
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (folderCalc2_listnamen.title ==
                            'Ordner 2 Rechner') {}
                      }));
            }));
  }
}

/////////////////////////////////////////////////////////////////////////
//////////////////////////////////Ordner 3 Rechner///////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

class FolderCalc3 extends StatelessWidget {
  const FolderCalc3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Ordner 3', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: FolderCalc3_listnamenlist.length,
            itemBuilder: (context, index) {
              FolderCalc3_listnamen folderCalc3_listnamen =
                  FolderCalc3_listnamenlist[index];
              return Card(
                  child: ListTile(
                      title: Text(folderCalc3_listnamen.title),
                      leading: folderCalc3_listnamen.icon,
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (folderCalc3_listnamen.title ==
                            'Ordner 3 Rechner') {}
                      }));
            }));
  }
}
