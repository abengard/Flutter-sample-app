import 'package:flutter/gestures.dart';
import 'package:sample_app/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Info',
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
      body: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            Column(children: [
/////////////////Beschreibung

              SizedBox(height: 30),
              Row(children: [
                SizedBox(width: 20),
                Text('Beschreibung',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ]),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  SizedBox(width: 20),
                  Flexible(
                    child: new Text(
                        'Diese App stellt eine Muster-App für Lernzwecke in Flutter da. Es steht jedem frei, Zeilen aus dem Code zu kopieren.'),
                  )
                ],
              ),

              SizedBox(height: 20),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              SizedBox(height: 10),

////////////////////////////Entwickler

              Row(children: [
                SizedBox(width: 20),
                Text('Entwickler',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ]),

              SizedBox(height: 20),
              Row(
                children: [SizedBox(width: 20), Text('Dominic Hagemann')],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text('Mohamed Usamah Tchelebi')
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 20),
                  RichText(
                      text: new TextSpan(children: [
                    new TextSpan(
                      text: 'Artur Alekseevic Bengardt | ',
                      style: new TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ])),
                  Image.asset(
                    "assets/Icons/GitHub_logo.png",
                    width: 15,
                  ),
                  RichText(
                    text: new TextSpan(
                      children: [
                        new TextSpan(
                          text: '  GitHub:',
                          style:
                              new TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        new TextSpan(
                          text: ' abengard',
                          style:
                              new TextStyle(fontSize: 15, color: Colors.blue),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              launchUrlString('https://github.com/abengard');
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ])
          ]),
    );
  }
}
