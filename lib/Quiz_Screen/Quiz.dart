import 'package:sample_app/Quiz_Screen/Funktion/question-widget.dart';
import 'package:sample_app/Quiz_Screen/Funktion/question.dart';
import 'package:sample_app/main.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Quiz_Screen/Quiz_Listnamen.dart';
import 'package:sample_app/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:carousel_slider/carousel_slider.dart';

// ignore: must_be_immutable
class Quiz extends StatelessWidget {
  int count = 0;
  void vision(punkte) {
    if (punkte == 58) {
      count = 4;
      save(count);
    }
  }

  save(count) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setInt("count1", count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Quiz',
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
          itemCount: Quiz_Listnamenlist.length,
          itemBuilder: (context, index) {
            Quiz_Listnamen quiz_Listnamen = Quiz_Listnamenlist[index];
            return Card(
              child: ListTile(
                  title: Text(quiz_Listnamen.title),
                  leading: quiz_Listnamen.icon,
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () async {
                    if (quiz_Listnamen.title == 'Ordner 1') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FolderQuiz1()));
                    }
                    if (quiz_Listnamen.title == 'Ordner 2') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FolderQuiz2()));
                    }
                    if (quiz_Listnamen.title == 'Ordner 3') {
                      vision(punkte);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FolderQuiz3()));
                    }
                    if (quiz_Listnamen.title == 'Ordner 4') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FolderQuiz4()));
                    }
                  }),
            );
          }),
    );
  }
}

///////////////////////////////////////////////////////////////
///////////////////////////////////////////Ordner 1//////////////////////////////
///////////////////////////////////////////////////////////////////////

class FolderQuiz1 extends StatefulWidget {
  const FolderQuiz1({
    Key? key,
  }) : super(key: key);

  @override
  State<FolderQuiz1> createState() => _FolderQuiz1State();
}

class _FolderQuiz1State extends State<FolderQuiz1> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Ordner 1', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: Q1list.length,
            itemBuilder: (context, index) {
              Q1 q1 = Q1list[index];
              return Card(
                  child: ListTile(
                      title: Text(q1.title),
                      leading: Icon(Icons.extension),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (q1.title == 'Quiz 1') {
                          punkte = 0;
                          allpunkte = 0;
                          fragenindex = 0;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz1()));
                        }
                      }));
            }));
  }
}

///////////////////////////////////////////Quiz 1//////////////////////////////

class Quiz1 extends StatefulWidget {
  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  CarouselController buttonCarouselController = CarouselController();

  final List<Question> questions1 = [
    Question("In welcher italienischen Stadt befindet sich das Kolosseum?",
        "Rom", "Köln", "", "", "Rom", "-", "-", "-", 1, 1),
    Question(
        "Was ist die größte Schlucht der Welt?",
        "Verdon-Schlucht, Frankreich",
        "Grand Canyon, USA",
        "",
        "",
        "Grand Canyon, USA",
        "-",
        "-",
        "-",
        1,
        1),
    Question(
        "Wie heißt in The Big Bang Theory der Nachbar von Sheldon und Leonard?",
        "Jessi",
        "Penny",
        "",
        "",
        "Penny",
        "-",
        "-",
        "-",
        1,
        1),
    Question("Nur Japanische Marken auswählen.", "Mazda", "Suzuki", "Hyundai",
        "Opel", "Mazda", "Suzuki", "-", "-", 2, 2),
    Question(
        "Wie viele Inftinity Steine existieren im Marvel Cincemativ Universe?",
        "5",
        "6",
        "",
        "",
        "6",
        "-",
        "-",
        "-",
        1,
        1),
    Question(
        "Welcher Schauspieler hat in Star Wars gespielt?",
        "Harrison Ford",
        "David Prowse",
        "Jason Statham",
        "Ian Mckellen",
        "Harrison Ford",
        "David Prowse",
        "-",
        "-",
        2,
        2),
    Question("Wähle alles aus.", "1", "2", "3", "4", "1", "2", "3", "4", 2, 4),
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: kopfzeile('Quiz 1', context),
      body: CarouselSlider(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
            height: height - 100,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            reverse: false
            // autoPlay: false,
            ),
        items: questions1
            .map((item) => Container(
                  child: Center(
                      child: QuestionWidget(item, buttonCarouselController)),
                ))
            .toList(),
      ),
    );
  }
}

/////////////////////////////////////////////////////////
///////////////////////////////////////////Ordner 2//////////////////////////////
///////////////////////////////////////////////////////////////////////

class FolderQuiz2 extends StatefulWidget {
  const FolderQuiz2({Key? key}) : super(key: key);

  @override
  State<FolderQuiz2> createState() => _FolderQuiz2State();
}

class _FolderQuiz2State extends State<FolderQuiz2> {
  int count = 0;

  void vision(punkte) {
    if (punkte == 15) {
      count = 1;
      save(count);
    } else if (punkte == 27) {
      count = 2;
      save(count);
    } else if (punkte == 42) {
      count = 3;
      save(count);
    }
  }

  save(count) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setInt("count", count);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Ordner 2', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: Q2list.length,
            itemBuilder: (context, index) {
              Q2 q2 = Q2list[index];
              return Card(
                  child: ListTile(
                      title: Text(q2.title),
                      leading: Icon(Icons.folder_open),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (q2.title == 'Unter-Ordner 2.1') {
                          vision(punkte);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubfolderQuiz21()));
                        }
                        if (q2.title == 'Unter-Ordner 2.2') {
                          vision(punkte);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubfolderQuiz22()));
                        }
                        if (q2.title == 'Unter-Ordner 2.3') {
                          vision(punkte);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubFolderQuiz23()));
                        }
                      }));
            }));
  }
}

///////////////////////////////////////////////Unter-Ordner 2.1////////////////////////////////
class SubfolderQuiz21 extends StatefulWidget {
  const SubfolderQuiz21({Key? key}) : super(key: key);
  @override
  State<SubfolderQuiz21> createState() => _SubfolderQuiz21State();
}

class _SubfolderQuiz21State extends State<SubfolderQuiz21> {
  int count = 0;

  void loadsave() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      count = (prefs.getInt('count') ?? 0);
    });
  }

  @override
  void initState() {
    super.initState();
    loadsave();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Unter-Ordner 2.1', context),
        body: Visibility(
          child: ListView.builder(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: Q2_1list.length,
              itemBuilder: (context, index) {
                Q2_1 q2_1 = Q2_1list[index];
                return Card(
                    child: ListTile(
                        title: Text(q2_1.title),
                        leading: Icon(Icons.extension),
                        trailing: Icon(Icons.arrow_forward),
                        onTap: () async {
                          if (q2_1.title == 'Quiz 2') {
                            fragenindex = 0;
                            allpunkte = 0;
                            punkte = 15;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quiz2()));
                          }
                        }));
              }),
          visible: (count == 1 ||
                  count == 2 ||
                  count == 3 ||
                  count == 4 ||
                  count == 5 ||
                  count == 6)
              ? true
              : false,
        ));
  }
}

///////////////////////////////////////////////Quiz 2///////////////////////////

class Quiz2 extends StatefulWidget {
  @override
  State<Quiz2> createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
  CarouselController buttonCarouselController = CarouselController();

  final List<Question> questions4 = [
    Question(
        "Wie viele Inftinity Steine existieren im Marvel Cincemativ Universe?",
        "6",
        "5",
        "",
        "",
        "6",
        "-",
        "-",
        "-",
        1,
        1),
    Question(
        "Wie viele Inftinity Steine existieren im Marvel Cincemativ Universe?",
        "5",
        "6",
        "",
        "",
        "6",
        "-",
        "-",
        "-",
        1,
        1),
    Question(
        "Wie viele Inftinity Steine existieren im Marvel Cincemativ Universe?",
        "5",
        "6",
        "",
        "",
        "6",
        "-",
        "-",
        "-",
        1,
        1),
    Question(
        "Wie viele Inftinity Steine existieren im Marvel Cincemativ Universe?",
        "5",
        "6",
        "",
        "",
        "6",
        "-",
        "-",
        "-",
        1,
        1),
    Question("Nur Japanische Marken auswählen.", "Mazda", "Suzuki", "Sony",
        "Opel", "Mazda", "Suzuki", "Sony", "-", 2, 3),
    Question(
        "Wie viele Inftinity Steine existieren im Marvel Cincemativ Universe?",
        "5",
        "6",
        "",
        "",
        "6",
        "-",
        "-",
        "-",
        1,
        1),
    Question(
        "Wie viele Inftinity Steine existieren im Marvel Cincemativ Universe?",
        "5",
        "6",
        "",
        "",
        "6",
        "-",
        "-",
        "-",
        1,
        1),
  ];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: kopfzeile('Quiz 2', context),
      body: CarouselSlider(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
            height: height - 100,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            reverse: false
            // autoPlay: false,
            ),
        items: questions4
            .map((item) => Container(
                  child: Center(
                      child: QuestionWidget(item, buttonCarouselController)),
                ))
            .toList(),
      ),
    );
  }
}

///////////////////////////////////////////////Unter-Ordner 2.2////////////////////////////////
class SubfolderQuiz22 extends StatefulWidget {
  const SubfolderQuiz22({Key? key}) : super(key: key);

  @override
  State<SubfolderQuiz22> createState() => _SubfolderQuiz22State();
}

class _SubfolderQuiz22State extends State<SubfolderQuiz22> {
  int count = 0;
  void loadsave() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      count = (prefs.getInt('count') ?? 0);
    });
  }

  @override
  void initState() {
    super.initState();
    loadsave();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Unter-Ordner 2.2', context),
        body: Visibility(
          child: ListView.builder(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: Q2_2list.length,
              itemBuilder: (context, index) {
                Q2_2 q2_2 = Q2_2list[index];
                return Card(
                    child: ListTile(
                        title: Text(q2_2.title),
                        leading: Icon(Icons.extension),
                        trailing: Icon(Icons.arrow_forward),
                        onTap: () async {
                          if (q2_2.title == 'Quiz 3') {
                            fragenindex = 0;
                            allpunkte = 0;
                            punkte = 26;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quiz3()));
                          }
                        }));
              }),
          visible: (count == 2 ||
                  count == 3 ||
                  count == 4 ||
                  count == 5 ||
                  count == 6)
              ? true
              : false,
        ));
  }
}

///////////////////////////////////////////////Quiz 3///////////////////////////
class Quiz3 extends StatefulWidget {
  @override
  State<Quiz3> createState() => _Quiz3State();
}

class _Quiz3State extends State<Quiz3> {
  CarouselController buttonCarouselController = CarouselController();

  final List<Question> questions5 = [];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: kopfzeile('Quiz 3', context),
      body: CarouselSlider(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
            height: height - 100,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            reverse: false
            // autoPlay: false,
            ),
        items: questions5
            .map((item) => Container(
                  child: Center(
                      child: QuestionWidget(item, buttonCarouselController)),
                ))
            .toList(),
      ),
    );
  }
}

///////////////////////////////////////////////Unter-Ordner 2.3////////////////////////////////
class SubFolderQuiz23 extends StatefulWidget {
  const SubFolderQuiz23({Key? key}) : super(key: key);
  @override
  State<SubFolderQuiz23> createState() => _SubFolderQuiz23State();
}

class _SubFolderQuiz23State extends State<SubFolderQuiz23> {
  int count = 0;

  void loadsave() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      count = (prefs.getInt('count') ?? 0);
    });
  }

  @override
  void initState() {
    super.initState();
    loadsave();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Unter-Ordner 2.3', context),
        body: Visibility(
          child: ListView.builder(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: Q2_3list.length,
              itemBuilder: (context, index) {
                Q2_3 q2_3 = Q2_3list[index];
                return Card(
                    child: ListTile(
                        title: Text(q2_3.title),
                        leading: Icon(Icons.extension),
                        trailing: Icon(Icons.arrow_forward),
                        onTap: () async {
                          if (q2_3.title == 'Quiz 4') {
                            fragenindex = 0;
                            allpunkte = 0;
                            punkte = 42;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quiz4()));
                          }
                        }));
              }),
          visible: (count == 3 || count == 4 || count == 5 || count == 6)
              ? true
              : false,
        ));
  }
}

///////////////////////////////////////////////Quiz 4///////////////////////////
class Quiz4 extends StatefulWidget {
  @override
  State<Quiz4> createState() => _Quiz4State();
}

class _Quiz4State extends State<Quiz4> {
  CarouselController buttonCarouselController = CarouselController();

  final List<Question> questionsschu = [];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: kopfzeile('Quiz 4', context),
      body: CarouselSlider(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
            height: height - 100,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            reverse: false
            // autoPlay: false,
            ),
        items: questionsschu
            .map((item) => Container(
                  child: Center(
                      child: QuestionWidget(item, buttonCarouselController)),
                ))
            .toList(),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////
///////////////////////////////////////////Ordner 3//////////////////////////////
///////////////////////////////////////////////////////////////////////
class FolderQuiz3 extends StatefulWidget {
  const FolderQuiz3({Key? key}) : super(key: key);

  @override
  State<FolderQuiz3> createState() => _FolderQuiz3State();
}

class _FolderQuiz3State extends State<FolderQuiz3> {
  int count = 0;

  void loadsave() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      count = (prefs.getInt('count1') ?? 0);
    });
  }

  @override
  void initState() {
    super.initState();
    loadsave();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Ordner 3', context),
        body: Visibility(
            child: ListView.builder(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: Q3list.length,
                itemBuilder: (context, index) {
                  Q3 q3 = Q3list[index];
                  return Card(
                      child: ListTile(
                          title: Text(q3.title),
                          leading: Icon(Icons.extension),
                          trailing: Icon(Icons.arrow_forward),
                          onTap: () async {
                            if (q3.title == 'Quiz 5') {
                              punkte = 58;
                              fragenindex = 0;
                              allpunkte = 0;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Quiz5()));
                            }
                          }));
                }),
            visible: (count == 4 || count == 5 || count == 6) ? true : false));
  }
}

///////////////////////////////////////////////////////////////
///////////////////////////////////////////Quiz 5//////////////////////////////
///////////////////////////////////////////////////////////////////////

class Quiz5 extends StatefulWidget {
  @override
  State<Quiz5> createState() => _Quiz5State();
}

class _Quiz5State extends State<Quiz5> {
  CarouselController buttonCarouselController = CarouselController();

  final List<Question> questions6 = [];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: kopfzeile('Quiz 5', context),
      body: CarouselSlider(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
            height: height - 100,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            reverse: false
            // autoPlay: false,
            ),
        items: questions6
            .map((item) => Container(
                  child: Center(
                      child: QuestionWidget(item, buttonCarouselController)),
                ))
            .toList(),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////
///////////////////////////////////////////Ordner 4//////////////////////////////
///////////////////////////////////////////////////////////////////////

// ignore: must_be_immutable
class FolderQuiz4 extends StatelessWidget {
  int count = 0;
  void vision(punkte) {
    if (punkte == 82) {
      count = 5;
      save(count);
    } else if (punkte == 97) {
      count = 6;
      save(count);
    }
  }

  save(count) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setInt("count2", count);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Ordner 4', context),
        body: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: Q4list.length,
            itemBuilder: (context, index) {
              Q4 q4 = Q4list[index];
              return Card(
                  child: ListTile(
                      title: Text(q4.title),
                      leading: Icon(Icons.folder_open),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () async {
                        if (q4.title == 'Unter-Ordner 4.1') {
                          vision(punkte);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubFolderQuiz41()));
                        }
                        if (q4.title == 'Unter-Ordner 4.2') {
                          vision(punkte);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubFolderQuiz42()));
                        }
                      }));
            }));
  }
}

///////////////////////////////////Ordner 4.1///////////////////////////////////////
///
class SubFolderQuiz41 extends StatefulWidget {
  const SubFolderQuiz41({Key? key}) : super(key: key);

  @override
  State<SubFolderQuiz41> createState() => _SubFolderQuiz41State();
}

class _SubFolderQuiz41State extends State<SubFolderQuiz41> {
  int count = 0;

  void loadsave() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      count = (prefs.getInt('count2') ?? 0);
    });
  }

  @override
  void initState() {
    super.initState();
    loadsave();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Unter-Ordner 4.1', context),
        body: Visibility(
          child: ListView.builder(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: Q4_1list.length,
              itemBuilder: (context, index) {
                Q4_1 q4_1 = Q4_1list[index];
                return Card(
                    child: ListTile(
                        title: Text(q4_1.title),
                        leading: Icon(Icons.extension),
                        trailing: Icon(Icons.arrow_forward),
                        onTap: () async {
                          if (q4_1.title == 'Quiz 6') {
                            punkte = 82;
                            allpunkte = 0;
                            fragenindex = 0;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quiz6()));
                          }
                        }));
              }),
          visible: (count == 5 || count == 6) ? true : false,
        ));
  }
}

///////////////////////////////////Quiz 6///////////////////////////////////////
///

class Quiz6 extends StatefulWidget {
  @override
  State<Quiz6> createState() => _Quiz6State();
}

class _Quiz6State extends State<Quiz6> {
  CarouselController buttonCarouselController = CarouselController();

  final List<Question> questions3 = [];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: kopfzeile('Quiz 6', context),
      body: CarouselSlider(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
            height: height - 100,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            reverse: false
            // autoPlay: false,
            ),
        items: questions3
            .map((item) => Container(
                  child: Center(
                      child: QuestionWidget(item, buttonCarouselController)),
                ))
            .toList(),
      ),
    );
  }
}

///////////////////////////////////Unter-Ordner 4.2///////////////////////////////////////
class SubFolderQuiz42 extends StatefulWidget {
  const SubFolderQuiz42({Key? key}) : super(key: key);

  @override
  State<SubFolderQuiz42> createState() => _SubFolderQuiz42State();
}

class _SubFolderQuiz42State extends State<SubFolderQuiz42> {
  int count = 0;

  void loadsave() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      count = (prefs.getInt('count2') ?? 0);
    });
  }

  @override
  void initState() {
    super.initState();
    loadsave();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: kopfzeile('Unter-Ordner 4.2', context),
        body: Visibility(
          child: ListView.builder(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: Q4_2list.length,
              itemBuilder: (context, index) {
                Q4_2 q4_2 = Q4_2list[index];
                return Card(
                    child: ListTile(
                        title: Text(q4_2.title),
                        leading: Icon(Icons.extension),
                        trailing: Icon(Icons.arrow_forward),
                        onTap: () async {
                          if (q4_2.title == 'Quiz 7') {
                            punkte = 97;
                            allpunkte = 0;
                            fragenindex = 0;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quiz7()));
                          }
                        }));
              }),
          visible: (count == 6) ? true : false,
        ));
  }
}

///////////////////////////////////Quiz 7//////////////////////////////////
///
///
class Quiz7 extends StatefulWidget {
  @override
  State<Quiz7> createState() => _Quiz7State();
}

class _Quiz7State extends State<Quiz7> {
  CarouselController buttonCarouselController = CarouselController();

  final List<Question> questions2 = [];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: kopfzeile('Quiz 7', context),
      body: CarouselSlider(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
            height: height - 100,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            reverse: false),
        items: questions2
            .map((item) => Container(
                  child: Center(
                      child: QuestionWidget(item, buttonCarouselController)),
                ))
            .toList(),
      ),
    );
  }
}
