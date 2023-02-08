import 'dart:math';

import 'package:sample_app/main.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Quiz_Screen/Funktion/checkbox_widget.dart';
import 'package:sample_app/Quiz_Screen/Funktion/app_enum.dart';
import 'package:sample_app/Quiz_Screen/Funktion/question.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuestionWidget extends StatefulWidget {
  final Question question;
  final CarouselController buttonCarouselController;

  QuestionWidget(
    this.question,
    this.buttonCarouselController, {
    Key? key,
  }) : super(key: key);

  @override
  _QuestionWidgetState createState() =>
      _QuestionWidgetState(question, buttonCarouselController);
}

int punkte = 0;
int fragenindex = 0;
int allpunkte = 0;

late SharedPreferences prefs;

class _QuestionWidgetState extends State<QuestionWidget> {
  _QuestionWidgetState(this.item, this.buttonCarouselController);

  CarouselController buttonCarouselController;

  Question item;

  AppEnum _character = AppEnum.NON;

  bool _isSelectedA = false;
  bool _isSelectedB = false;
  bool _isSelectedC = false;
  bool _isSelectedD = false;
  bool _isVisible = false;
  String? EndText;

  void vntext(Punkte) {
    if (punkte <= 15) {
      EndText =
          "Du hast " + ((punkte / allpunkte) * 100).toString() + " % erreicht!";
    } else if (punkte > 15 && punkte <= 27) {
      EndText = "Du hast " +
          (((punkte - 15) / allpunkte) * 100).toString() +
          " % erreicht!";
    } else if (punkte > 27 && punkte <= 42) {
      EndText = "Du hast " +
          (((punkte - 26) / allpunkte) * 100).toString() +
          " % erreicht!";
    } else if (punkte > 42 && punkte <= 58) {
      EndText = "Du hast " +
          (((punkte - 42) / allpunkte) * 100).toString() +
          " % erreicht!";
    } else if (punkte > 58 && punkte <= 82) {
      EndText = "Du hast " +
          (((punkte - 58) / allpunkte) * 100).toString() +
          " % erreicht!";
    } else if (punkte > 82 && punkte <= 97) {
      EndText = "Du hast " +
          (((punkte - 82) / allpunkte) * 100).toString() +
          " % erreicht!";
    } else {
      EndText = "Du hast " +
          (((punkte - 97) / allpunkte) * 100).toString() +
          " % erreicht!";
    }
  }

  int radio = 1;
  int check = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          item.type == check ? getCheckBoxWidget(item) : getRadioWidget(item),
          SizedBox(
            height: 30.0,
          ),
          actionButton(),
        ]));
  }

  onVerifyClick() {
    if (AppEnum.optionC == "" && AppEnum.optionD == "") {
      _isVisible = true;
    }
    fragenindex++;
    if (fragenindex < 10) {
      allpunkte += item.punkteanzahl;
      if (item.type == radio) {
        if (_character == AppEnum.optionA && item.optionA == item.ans ||
            _character == AppEnum.optionB && item.optionB == item.ans ||
            _character == AppEnum.optionC && item.optionC == item.ans ||
            _character == AppEnum.optionD && item.optionD == item.ans) {
          punkte += item.punkteanzahl;
        } else {}
      } else {
        if (
// eine Antwortmöglichkeit
            (_isSelectedA && item.optionA == item.ans) &&
                    (_isSelectedB != true) &&
                    (_isSelectedC != true) &&
                    (_isSelectedD != true) ||
                (_isSelectedB && item.optionB == item.ans) &&
                    (_isSelectedA != true) &&
                    (_isSelectedC != true) &&
                    (_isSelectedD != true) ||
                (_isSelectedC && item.optionC == item.ans) &&
                    (_isSelectedB != true) &&
                    (_isSelectedA != true) &&
                    (_isSelectedD != true) ||
                (_isSelectedD && item.optionD == item.ans) &&
                    (_isSelectedB != true) &&
                    (_isSelectedC != true) &&
                    (_isSelectedA != true) ||

                // Zwei Antwortmöglichkeiten
                (_isSelectedA && item.optionA == item.ans) &&
                    (_isSelectedB && item.optionB == item.ans2) &&
                    (_isSelectedC != true) &&
                    (_isSelectedD != true) ||
                (_isSelectedA && item.optionA == item.ans) &&
                    (_isSelectedC && item.optionC == item.ans2) &&
                    (_isSelectedB != true) &&
                    (_isSelectedD != true) ||
                (_isSelectedA && item.optionA == item.ans) &&
                    (_isSelectedD && item.optionD == item.ans2) &&
                    (_isSelectedC != true) &&
                    (_isSelectedB != true) ||
                (_isSelectedB && item.optionB == item.ans) &&
                    (_isSelectedA && item.optionA == item.ans2) &&
                    (_isSelectedC != true) &&
                    (_isSelectedD != true) ||
                (_isSelectedB && item.optionB == item.ans) &&
                    (_isSelectedC && item.optionC == item.ans2) &&
                    (_isSelectedA != true) &&
                    (_isSelectedD != true) ||
                (_isSelectedB && item.optionB == item.ans) &&
                    (_isSelectedD && item.optionD == item.ans2) &&
                    (_isSelectedC != true) &&
                    (_isSelectedA != true) ||
                (_isSelectedC && item.optionC == item.ans) &&
                    (_isSelectedA && item.optionA == item.ans2) &&
                    (_isSelectedB != true) &&
                    (_isSelectedD != true) ||
                (_isSelectedC && item.optionC == item.ans) &&
                    (_isSelectedB && item.optionB == item.ans2) &&
                    (_isSelectedA != true) &&
                    (_isSelectedD != true) ||
                (_isSelectedC && item.optionC == item.ans) &&
                    (_isSelectedD && item.optionD == item.ans2) &&
                    (_isSelectedA != true) &&
                    (_isSelectedB != true) ||
                (_isSelectedD && item.optionD == item.ans) &&
                    (_isSelectedA && item.optionA == item.ans2) &&
                    (_isSelectedB != true) &&
                    (_isSelectedC != true) ||
                (_isSelectedD && item.optionD == item.ans) &&
                    (_isSelectedB && item.optionB == item.ans2) &&
                    (_isSelectedC != true) &&
                    (_isSelectedA != true) ||
                (_isSelectedD && item.optionD == item.ans) &&
                    (_isSelectedC && item.optionC == item.ans2) &&
                    (_isSelectedB != true) &&
                    (_isSelectedA != true) ||

                //Drei Antwortmöglichkeiten
                (_isSelectedA && item.optionA == item.ans) &&
                    (_isSelectedB && item.optionB == item.ans2) &&
                    (_isSelectedC && item.optionC == item.ans3) &&
                    (_isSelectedD != true) ||
                (_isSelectedA && item.optionA == item.ans) &&
                    (_isSelectedB && item.optionB == item.ans2) &&
                    (_isSelectedD && item.optionD == item.ans3) &&
                    (_isSelectedA != true) ||
                (_isSelectedA && item.optionA == item.ans) &&
                    (_isSelectedC && item.optionC == item.ans2) &&
                    (_isSelectedB && item.optionB == item.ans3) &&
                    (_isSelectedD != true) ||
                (_isSelectedA && item.optionA == item.ans) &&
                    (_isSelectedC && item.optionC == item.ans2) &&
                    (_isSelectedD && item.optionD == item.ans3) &&
                    (_isSelectedB != true) ||
                (_isSelectedA && item.optionA == item.ans) &&
                    (_isSelectedD && item.optionD == item.ans2) &&
                    (_isSelectedB && item.optionB == item.ans3) &&
                    (_isSelectedC != true) ||
                (_isSelectedA && item.optionA == item.ans) &&
                    (_isSelectedD && item.optionD == item.ans2) &&
                    (_isSelectedC && item.optionC == item.ans3) &&
                    (_isSelectedB != true) ||
                (_isSelectedB && item.optionB == item.ans) &&
                    (_isSelectedA && item.optionA == item.ans2) &&
                    (_isSelectedC && item.optionC == item.ans3) &&
                    (_isSelectedD != true) ||
                (_isSelectedB && item.optionB == item.ans) &&
                    (_isSelectedA && item.optionA == item.ans2) &&
                    (_isSelectedD && item.optionD == item.ans3) &&
                    (_isSelectedC != true) ||
                (_isSelectedB && item.optionB == item.ans) &&
                    (_isSelectedC && item.optionC == item.ans2) &&
                    (_isSelectedA && item.optionA == item.ans3) &&
                    (_isSelectedD != true) ||
                (_isSelectedB && item.optionB == item.ans) &&
                    (_isSelectedC && item.optionC == item.ans2) &&
                    (_isSelectedD && item.optionD == item.ans3) &&
                    (_isSelectedA != true) ||
                (_isSelectedB && item.optionB == item.ans) &&
                    (_isSelectedD && item.optionD == item.ans2) &&
                    (_isSelectedA && item.optionA == item.ans3) &&
                    (_isSelectedC != true) ||
                (_isSelectedB && item.optionB == item.ans) &&
                    (_isSelectedD && item.optionD == item.ans2) &&
                    (_isSelectedB && item.optionB == item.ans3) &&
                    (_isSelectedA != true) ||
                (_isSelectedC && item.optionC == item.ans) &&
                    (_isSelectedA && item.optionA == item.ans2) &&
                    (_isSelectedB && item.optionB == item.ans3) &&
                    (_isSelectedD != true) ||
                (_isSelectedC && item.optionC == item.ans) &&
                    (_isSelectedA && item.optionA == item.ans2) &&
                    (_isSelectedD && item.optionD == item.ans3) &&
                    (_isSelectedB != true) ||
                (_isSelectedC && item.optionC == item.ans) &&
                    (_isSelectedB && item.optionB == item.ans2) &&
                    (_isSelectedA && item.optionA == item.ans3) &&
                    (_isSelectedD != true) ||
                (_isSelectedC && item.optionC == item.ans) &&
                    (_isSelectedB && item.optionB == item.ans2) &&
                    (_isSelectedD && item.optionD == item.ans3) &&
                    (_isSelectedA != true) ||
                (_isSelectedC && item.optionC == item.ans) &&
                    (_isSelectedD && item.optionD == item.ans2) &&
                    (_isSelectedB && item.optionB == item.ans3) &&
                    (_isSelectedA != true) ||
                (_isSelectedC && item.optionC == item.ans) &&
                    (_isSelectedD && item.optionD == item.ans2) &&
                    (_isSelectedA && item.optionA == item.ans3) &&
                    (_isSelectedB != true) ||
                (_isSelectedD && item.optionD == item.ans) &&
                    (_isSelectedA && item.optionA == item.ans2) &&
                    (_isSelectedB && item.optionB == item.ans3) &&
                    (_isSelectedC != true) ||
                (_isSelectedD && item.optionD == item.ans) &&
                    (_isSelectedA && item.optionA == item.ans2) &&
                    (_isSelectedC && item.optionC == item.ans3) &&
                    (_isSelectedB != true) ||
                (_isSelectedD && item.optionD == item.ans) &&
                    (_isSelectedB && item.optionB == item.ans2) &&
                    (_isSelectedA && item.optionA == item.ans3) &&
                    (_isSelectedC != true) ||
                (_isSelectedD && item.optionD == item.ans) &&
                    (_isSelectedB && item.optionB == item.ans2) &&
                    (_isSelectedC && item.optionC == item.ans3) &&
                    (_isSelectedA != true) ||
                (_isSelectedD && item.optionD == item.ans) &&
                    (_isSelectedC && item.optionC == item.ans2) &&
                    (_isSelectedA && item.optionA == item.ans3) &&
                    (_isSelectedB != true) ||
                (_isSelectedD && item.optionD == item.ans) &&
                    (_isSelectedC && item.optionC == item.ans2) &&
                    (_isSelectedB && item.optionB == item.ans3) &&
                    (_isSelectedA != true) ||

                //Wenn alle Lösungen richtig sind ("How 2 make a quiz befolgen")
                (_isSelectedA && item.optionA == item.ans) &&
                    (_isSelectedB && item.optionB == item.ans2) &&
                    (_isSelectedC && item.optionC == item.ans3) &&
                    (_isSelectedD && item.optionD == item.ans4)) {
          punkte += item.punkteanzahl;
        }
      }
    } else {
      allpunkte += item.punkteanzahl;
      punkte += item.punkteanzahl;
      vntext(punkte);

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => EndScreen(
                  punkte: punkte, allpunkte: allpunkte, EndText: EndText)));
    }

    print(allpunkte);
    print(punkte);
    buttonCarouselController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.linear);
  }

  Widget getRadioWidget(Question item) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              item.question,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          RadioListTile<AppEnum>(
            title: Text(item.optionA),
            value: AppEnum.optionA,
            groupValue: _character,
            onChanged: (value) {
              setState(() {
                _character = value!;
              });
            },
          ),
          RadioListTile<AppEnum>(
            title: Text(item.optionB),
            value: AppEnum.optionB,
            groupValue: _character,
            onChanged: (value) {
              setState(() {
                _character = value!;
              });
            },
          ),
          Visibility(
              child: RadioListTile<AppEnum>(
                title: Text(item.optionC),
                value: AppEnum.optionC,
                groupValue: _character,
                onChanged: (value) {
                  setState(() {
                    _character = value!;
                  });
                },
              ),
              visible: _isVisible),
          Visibility(
              child: RadioListTile<AppEnum>(
                title: Text(item.optionD),
                value: AppEnum.optionD,
                groupValue: _character,
                onChanged: (value) {
                  setState(() {
                    _character = value!;
                  });
                },
              ),
              visible: _isVisible),
        ]);
  }

  Widget getCheckBoxWidget(Question item) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              item.question,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          CheckBoxWidget(
            label: item.optionA,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: _isSelectedA,
            onChanged: (bool newValue) {
              setState(() {
                _isSelectedA = newValue;
              });
            },
          ),
          CheckBoxWidget(
            label: item.optionB,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: _isSelectedB,
            onChanged: (bool newValue) {
              setState(() {
                _isSelectedB = newValue;
              });
            },
          ),
          CheckBoxWidget(
            label: item.optionC,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: _isSelectedC,
            onChanged: (bool newValue) {
              setState(() {
                _isSelectedC = newValue;
              });
            },
          ),
          CheckBoxWidget(
            label: item.optionD,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: _isSelectedD,
            onChanged: (bool newValue) {
              setState(() {
                _isSelectedD = newValue;
              });
            },
          ),
        ]);
  }

  Widget actionButton() {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: Text(
              "Nächste Frage",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => onVerifyClick(),
          ),
        ],
      ),
    ]);
  }
}

class EndScreen extends StatelessWidget {
  final int punkte;
  final int allpunkte;
  final EndText;

  const EndScreen(
      {Key? key,
      required this.punkte,
      required this.allpunkte,
      required this.EndText})
      : super(key: key);

  double roundDouble(double value, int places) {
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/hintergrund.jpg"),
                    fit: BoxFit.fitHeight)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text("Quiz beendet"),
                    Text("$EndText", textAlign: TextAlign.center),
                    ElevatedButton(
                        onPressed: () {
                          fragenindex = 0;
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mynavibar()),
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: Text("Zurück zur Startseite")),
                    Spacer()
                  ],
                ),
              ),
            )));
  }
}
