import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sample_app/main.dart';
import 'Themen_Listname.dart';
import 'package:sample_app/Home_Screen/Themen_Screen/PDF_Reader/page/pdf_viewer_page.dart';
import 'package:sample_app/widgets.dart';
import 'package:sample_app/Home_Screen/Themen_Screen/PDF_Reader/api/pdf_api.dart';

class Themen extends StatefulWidget {
  Themen({Key? key}) : super(key: key);

  @override
  State<Themen> createState() => _ThemenState();
}

class _ThemenState extends State<Themen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Text(
            'Themen',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => mynavibar()),
                  (Route<dynamic> route) => false,
                );
              })),
      body: ListView.builder(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: Themen_Listnamenlist.length,
          /*icount Schnittstelle für Datum-Sperre*/
          itemBuilder: (context, index) {
            Themen_Listnamen themen_Listnamen = Themen_Listnamenlist[index];
            return Card(
              child: ListTile(
                  title: Text(themen_Listnamen.title),
                  leading: themen_Listnamen.icon,
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () async {
                    if (themen_Listnamen.title == 'Ordner 1') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Folder1()));
                    }
                    if (themen_Listnamen.title == 'Ordner 2') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Folder2()));
                    }
                    if (themen_Listnamen.title == 'Ordner 3') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Folder3()));
                    }
                    if (themen_Listnamen.title == 'Ordner 4') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Folder4()));
                    }
                    ;
                  }),
            );
          }),
    );
  }
}
//////////////////////////////////Ordner 1///////////////////////////////////////////

class Folder1 extends StatelessWidget {
  const Folder1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Ordner 1', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: O1list.length,
            itemBuilder: (context, index) {
              O1 o1 = O1list[index];
              return Card(
                  child: ListTile(
                      title: Text(o1.title),
                      leading: Icon(Icons.picture_as_pdf_outlined),
                      onTap: () async {
                        if (o1.title == 'Vorlesung 1') {
                          final path = 'assets/PDF/Vorlesung 1.pdf';
                          final file = await PDFApi.loadAsset(path);
                          openPDF(context, file);
                        }
                        if (o1.title == 'Vorlesung 2') {
                          final path = 'assets/PDF/Vorlesung 2.pdf';
                          final file = await PDFApi.loadAsset(path);
                          openPDF(context, file);
                        }
                      }));
            }));
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)));
}

/////////////////////////////////////////////////////////////////////////
//////////////////////////////////Ordner 2///////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

class Folder2 extends StatelessWidget {
  const Folder2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Ordner 2', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: O2list.length,
            itemBuilder: (context, index) {
              O2 o2 = O2list[index];
              return Card(
                  child: ListTile(
                      title: Text(o2.title),
                      leading: Icon(Icons.folder_open),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (o2.title == 'Unter-Ordner 2.1') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Subfolder21()));
                        }
                        if (o2.title == 'Unter-Ordner 2.2') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Subfolder22()));
                        }
                        if (o2.title == 'Unter-Ordner 2.3') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Subfolder23()));
                        }
                      }));
            }));
  }
}

///////////////////////////////////Unter-Ordner 2.1//////////////////////////////////////

class Subfolder21 extends StatefulWidget {
  const Subfolder21({Key? key}) : super(key: key);

  @override
  State<Subfolder21> createState() => _Subfolder21State();
}

class _Subfolder21State extends State<Subfolder21> {
  late int vl1;
  late int vl2;

  late int ue1;
  late int ue2;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Unter-Ordner 2.1', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: OAlist.length,
            itemBuilder: (context, index) {
              OA oA = OAlist[index];
              return Card(
                  child: ListTile(
                      title: Text(oA.title),
                      leading: Icon(Icons.folder_open),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (oA.title == 'Vorlesung') {
                          vl1 = -1;
                          vl2 = 1;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Vorlesungen(vl1: vl1, vl2: vl2)));
                        }
                        if (oA.title == 'Hausaufgaben') {
                          ue1 = -1;
                          ue2 = 1;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Hausaufgabe(ue1: ue1, ue2: ue2)));
                        }
                      }));
            }));
  }
}

///////////////////////////////////Unter-Ordner 2.2//////////////////////////////////////

class Subfolder22 extends StatefulWidget {
  const Subfolder22({Key? key}) : super(key: key);

  @override
  State<Subfolder22> createState() => _Subfolder22State();
}

class _Subfolder22State extends State<Subfolder22> {
  late int vl1;
  late int vl2;

  late int ue1;
  late int ue2;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Unter-Ordner 2.2', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: OAlist.length,
            itemBuilder: (context, index) {
              OA oA = OAlist[index];
              return Card(
                  child: ListTile(
                      title: Text(oA.title),
                      leading: Icon(Icons.folder_open),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (oA.title == 'Vorlesung') {
                          vl1 = 0;
                          vl2 = 2;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Vorlesungen(vl1: vl1, vl2: vl2)));
                        }
                        if (oA.title == 'Hausaufgaben') {
                          ue1 = 0;
                          ue2 = 2;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Hausaufgabe(ue1: ue1, ue2: ue2)));
                        }
                      }));
            }));
  }
}

///////////////////////////////////Unter-Ordner 2.3//////////////////////////////////////

class Subfolder23 extends StatefulWidget {
  const Subfolder23({Key? key}) : super(key: key);

  @override
  State<Subfolder23> createState() => _Subfolder23State();
}

class _Subfolder23State extends State<Subfolder23> {
  late int vl1;
  late int vl2;

  late int ue1;
  late int ue2;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Unter-Ordner 2.3', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: OAlist.length,
            itemBuilder: (context, index) {
              OA oA = OAlist[index];
              return Card(
                  child: ListTile(
                      title: Text(oA.title),
                      leading: Icon(Icons.folder_open),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (oA.title == 'Vorlesung') {
                          vl1 = 1;
                          vl2 = 3;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Vorlesungen(vl1: vl1, vl2: vl2)));
                        }
                        if (oA.title == 'Hausaufgaben') {
                          ue1 = 10;
                          ue2 = 10;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Hausaufgabe(ue1: ue1, ue2: ue2)));
                        }
                      }));
            }));
  }
}

/////////////////////////////////////////////////////////////////////////
//////////////////////////////////Ordner 3///////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

class Folder3 extends StatefulWidget {
  const Folder3({Key? key}) : super(key: key);

  @override
  State<Folder3> createState() => _Folder3State();
}

class _Folder3State extends State<Folder3> {
  late int vl1;
  late int vl2;

  late int ue1;
  late int ue2;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Ordner 3', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: OAlist.length,
            itemBuilder: (context, index) {
              OA oA = OAlist[index];
              return Card(
                  child: ListTile(
                      title: Text(oA.title),
                      leading: Icon(Icons.folder_open),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (oA.title == 'Vorlesung') {
                          vl1 = 2;
                          vl2 = 4;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Vorlesungen(vl1: vl1, vl2: vl2)));
                        }
                        if (oA.title == 'Hausaufgaben') {
                          ue1 = 1;
                          ue2 = 3;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Hausaufgabe(ue1: ue1, ue2: ue2)));
                        }
                      }));
            }));
  }
}

/////////////////////////////////////////////////////////////////////////
//////////////////////////////////Ordner 4///////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

class Folder4 extends StatelessWidget {
  const Folder4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Ordner 4', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: O4list.length,
            itemBuilder: (context, index) {
              O4 o4 = O4list[index];
              return Card(
                  child: ListTile(
                      title: Text(o4.title),
                      leading: Icon(Icons.folder_open),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (o4.title == 'Unter-Ordner 4.1') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Subfolder41()));
                        }
                        if (o4.title == 'Unter-Ordner 4.2') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Subfolder42()));
                        }
                      }));
            }));
  }
}

///////////////////////////////////Unter-Ordner 4.1//////////////////////////////////////

class Subfolder41 extends StatefulWidget {
  const Subfolder41({Key? key}) : super(key: key);

  @override
  State<Subfolder41> createState() => _Subfolder41State();
}

class _Subfolder41State extends State<Subfolder41> {
  late int vl1;
  late int vl2;

  late int ue1;
  late int ue2;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Unter-Ordner 4.1', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: OAlist.length,
            itemBuilder: (context, index) {
              OA oA = OAlist[index];
              return Card(
                  child: ListTile(
                      title: Text(oA.title),
                      leading: Icon(Icons.folder_open),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (oA.title == 'Vorlesung') {
                          vl1 = 3;
                          vl2 = 5;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Vorlesungen(vl1: vl1, vl2: vl2)));
                        }
                        if (oA.title == 'Hausaufgaben') {
                          ue1 = 10;
                          ue2 = 10;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Hausaufgabe(ue1: ue1, ue2: ue2)));
                        }
                      }));
            }));
  }
}

///////////////////////////////////Unter-Ordner 4.2//////////////////////////////////////

class Subfolder42 extends StatefulWidget {
  const Subfolder42({Key? key}) : super(key: key);

  @override
  State<Subfolder42> createState() => _Subfolder42State();
}

class _Subfolder42State extends State<Subfolder42> {
  late int vl1;
  late int vl2;

  late int ue1;
  late int ue2;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Unter-Ordner 4.2', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: OAlist.length,
            itemBuilder: (context, index) {
              OA oA = OAlist[index];
              return Card(
                  child: ListTile(
                      title: Text(oA.title),
                      leading: Icon(Icons.folder_open),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (oA.title == 'Vorlesung') {
                          vl1 = 4;
                          vl2 = 6;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Vorlesungen(vl1: vl1, vl2: vl2)));
                        }
                        if (oA.title == 'Hausaufgaben') {
                          ue1 = 2;
                          ue2 = 4;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Hausaufgabe(ue1: ue1, ue2: ue2)));
                        }
                      }));
            }));
  }
}

///////////////////////////////////Vorlesung//////////////////////////////////////

class Vorlesungen extends StatefulWidget {
  final vl1;
  final vl2;

  Vorlesungen({
    Key? key,
    required this.vl1,
    required this.vl2,
  }) : super(key: key);

  @override
  State<Vorlesungen> createState() => _VorlesungenState(vl1, vl2);
}

class _VorlesungenState extends State<Vorlesungen> {
  final vl1;
  final vl2;

  _VorlesungenState(this.vl1, this.vl2);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Vorlesung', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: OAVlist.length,
            itemBuilder: (context, index) {
              OAV oAV = OAVlist[index];
              return Visibility(
                  visible: index > vl1 && index < vl2,
                  child: Card(
                      child: ListTile(
                          title: Text(oAV.title),
                          leading: Icon(Icons.picture_as_pdf_outlined),
                          onTap: () async {
                            if (oAV.title == 'Vorlesung 3') {
                              final path = 'assets/PDF/Vorlesung 3.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            }
                            if (oAV.title == 'Vorlesung 4') {
                              final path = 'assets/PDF/Vorlesung 4.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            }
                            if (oAV.title == 'Vorlesung 5') {
                              final path = 'assets/PDF/Vorlesung 5.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            }
                            if (oAV.title == 'Vorlesung 6') {
                              final path = 'assets/PDF/Vorlesung 6.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            }
                            if (oAV.title == 'Vorlesung 7') {
                              final path = 'assets/PDF/Vorlesung 7.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            }
                            if (oAV.title == 'Vorlesung 8') {
                              final path = 'assets/PDF/Vorlesung 8.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            }
                          })));
            }));
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)));
}

///////////////////////////////////Hausaufgaben//////////////////////////////////////

class Hausaufgabe extends StatefulWidget {
  final ue1;
  final ue2;

  Hausaufgabe({
    Key? key,
    required this.ue1,
    required this.ue2,
  }) : super(key: key);

  @override
  State<Hausaufgabe> createState() => _HausaufgabeState(ue1, ue2);
}

class _HausaufgabeState extends State<Hausaufgabe> {
  final ue1;
  final ue2;

  _HausaufgabeState(this.ue1, this.ue2);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Hausaufgaben', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: OAUlist.length,
            itemBuilder: (context, index) {
              OAU oAU = OAUlist[index];
              return Visibility(
                  visible: index > ue1 && index < ue2,
                  child: Card(
                      child: ListTile(
                          title: Text(oAU.title),
                          leading: Icon(Icons.picture_as_pdf_outlined),
                          onTap: () async {
                            if (oAU.title == 'Hausaufgabe 1') {
                              final path = 'assets/PDF/Hausaufgaben 1.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            }
                            if (oAU.title == 'Hausaufgabe 2') {
                              final path = 'assets/PDF/Hausaufgaben 2.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            }
                            if (oAU.title == 'Hausaufgabe 3') {
                              final path = 'assets/PDF/Hausaufgaben 3.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            }
                            if (oAU.title == 'Hausaufgabe 4') {
                              final path = 'assets/PDF/Hausaufgaben 4.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            }
                          })));
            }));
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)));
}
