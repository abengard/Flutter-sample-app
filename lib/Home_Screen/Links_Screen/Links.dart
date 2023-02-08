import 'package:sample_app/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Home_Screen/Links_Screen/Links_Listnamen.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Links extends StatefulWidget {
  const Links({Key? key}) : super(key: key);

  @override
  State<Links> createState() => _LinksState();
}

class _LinksState extends State<Links> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kopfzeile('Links', context),
      body: ListView.builder(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: LinksKatlist.length,
          itemBuilder: (context, index) {
            LinksKat linksKatlist = LinksKatlist[index];
            return Card(
              child: ListTile(
                  title: Text(linksKatlist.title),
                  leading: linksKatlist.icon,
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () async {
                    if (linksKatlist.title == 'Links zur Buchverlägen') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LzBuch()));
                    }
                    if (linksKatlist.title == 'Links zur Perinorm') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LzPerinorm()));
                    }

                    ;
                  }),
            );
          }),
    );
  }
}

/////////////////////////////////////////////////////Links zur Buchverlägen/////////

class LzBuch extends StatefulWidget {
  const LzBuch({Key? key}) : super(key: key);

  @override
  State<LzBuch> createState() => _LzBuchState();
}

class _LzBuchState extends State<LzBuch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kopfzeile('Links zur Buchverlägen', context),
      body: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.all(15),
          children: [
            Column(children: [
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: RichText(
                      text: new TextSpan(
                        children: [
                          new TextSpan(
                            text:
                                '•	App-Entwicklung – effizient und erfolgreich',
                            style: new TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                          new TextSpan(
                            text: '   https://bit.ly/3I0XsxS',
                            style:
                                new TextStyle(fontSize: 15, color: Colors.blue),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                launchUrlString('https://bit.ly/3I0XsxS');
                              },
                          ),
                        ],
                      ),
                    ),
                  )),

//////////////////////////////////////////

              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: RichText(
                      text: new TextSpan(
                        children: [
                          new TextSpan(
                            text: '•	Android App Entwicklung für Dummies',
                            style: new TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                          new TextSpan(
                            text: '   https://bit.ly/3jwChu4',
                            style:
                                new TextStyle(fontSize: 15, color: Colors.blue),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                launchUrlString('https://bit.ly/3jwChu4');
                              },
                          ),
                        ],
                      ),
                    ),
                  )),

//////////////////////////////////////////

              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: RichText(
                      text: new TextSpan(
                        children: [
                          new TextSpan(
                            text: '•	Informatik für Ingenieure ',
                            style: new TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                          new TextSpan(
                            text: '   https://bit.ly/40K4KO3',
                            style:
                                new TextStyle(fontSize: 15, color: Colors.blue),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                launchUrlString('https://bit.ly/40K4KO3');
                              },
                          ),
                        ],
                      ),
                    ),
                  )),
            ]),
          ]),
    );
  }
}
/////////////////////////////////////////////////////Links zur Perinorm/////////

class LzPerinorm extends StatefulWidget {
  const LzPerinorm({Key? key}) : super(key: key);

  @override
  State<LzPerinorm> createState() => _LzPerinormState();
}

class _LzPerinormState extends State<LzPerinorm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kopfzeile('Links zur Perinorm', context),
      body: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.all(15),
          children: [
            Column(children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: RichText(
                          text: new TextSpan(
                        children: [
                          new TextSpan(
                            text: 'https://www.perinorm.com/search.aspx',
                            style:
                                new TextStyle(fontSize: 15, color: Colors.blue),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                launchUrlString(
                                    'https://www.perinorm.com/search.aspx');
                              },
                          ),
                          new TextSpan(
                            text: '',
                            style: new TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                        ],
                      )))),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: RichText(
                      text: new TextSpan(
                        children: [
                          new TextSpan(
                            text:
                                '•	Normreihe DIN EN ISO 13849:		Sicherheit von Maschinen - Sicherheitsbezogene Teile von Steuerungen',
                            style: new TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: RichText(
                      text: new TextSpan(
                        children: [
                          new TextSpan(
                            text: '•	2006/42/EG:  	Maschinenrichtlinie',
                            style: new TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: RichText(
                      text: new TextSpan(
                        children: [
                          new TextSpan(
                            text:
                                '•	Normenreihe DIN ISO 10209: Technische Produktdokumentation',
                            style: new TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )),
            ])
          ]),
    );
  }
}
