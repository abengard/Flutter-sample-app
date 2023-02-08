
/*
import 'package:flutter/material.dart';
import 'package:bauphysik_app/Rechner/dropdownmenu.dart';
import 'package:bauphysik_app/Rechner/resultat.dart';
import 'package:bauphysik_app/widgets.dart';

class Taupunkt_Rechner extends StatefulWidget {
  const Taupunkt_Rechner({Key? key}) : super(key: key);

  @override
  State<Taupunkt_Rechner> createState() => _Taupunkt_RechnerState();
}

class _Taupunkt_RechnerState extends State<Taupunkt_Rechner> {
  String selectedValue;
  List<DropdownMenuItem<String>> menuitems = List();
  String value = "";
  bool disabledropdown1 = true;
  bool disabledropdown2 = true;
  bool disabledropdown3 = true;
  bool disabledropdown4 = true;
  String selValue1;
  String selValue2;
  String selValue3;
  String selValue4;

  bool _checked1 = false;
  bool _checked2 = false;

  String selAllg1;
  String selAllg2;
  String selAllg3;
  String selAllg4;
  bool disableallg1 = true;
  bool disableallg2 = true;
  bool disableallg3 = true;
  bool disableallg4 = true;

  var Button = null;

  bool _checkedrb1 = false;
  bool _checkedrb2 = false;
  bool _checkedrb3 = false;

  //////////////////////////////////Dropdown-Menü 1///////////////////////

  final Schicht_1a1 = {
    "1": "Schicht 2b",
    "2": "Schicht 2c",
  };

  get index => null;

  void populateSchicht_1a1() {
    for (String key in Schicht_1a1.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(Schicht_1a1[key]),
        ),
        value: Schicht_1a1[key],
      ));
    }
  }

  final Schicht_1a2 = {
    "1": "Schicht 2b",
    "2": "Schicht 2c",
    "3": "Schicht 2f",
    "4": "Schicht 2g",
  };

  void populateSchicht_1a2() {
    for (String key in Schicht_1a2.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(Schicht_1a2[key]),
        ),
        value: Schicht_1a2[key],
      ));
    }
  }

  final Schicht_1b1 = {
    "1": "Schicht 2a",
    "2": "Schicht 2c",
  };

  void populateSchicht_1b1() {
    for (String key in Schicht_1b1.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(Schicht_1b1[key]),
        ),
        value: Schicht_1b1[key],
      ));
    }
  }

  final Schicht_1b2 = {
    "1": "Schicht 2a",
    "2": "Schicht 2c",
    "3": "Schicht 2f",
    "4": "Schicht 2g",
  };

  void populateSchicht_1b2() {
    for (String key in Schicht_1b2.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(Schicht_1b2[key]),
        ),
        value: Schicht_1b2[key],
      ));
    }
  }

  final Schicht_1c1 = {
    "1": "Schicht 2a",
    "2": "Schicht 2b",
  };

  void populateSchicht_1c1() {
    for (String key in Schicht_1c1.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(Schicht_1c1[key]),
        ),
        value: Schicht_1c1[key],
      ));
    }
  }

  final Schicht_1c2 = {
    "1": "Schicht 2a",
    "2": "Schicht 2b",
    "3": "Schicht 2f",
    "4": "Schicht 2g",
  };

  void populateSchicht_1c2() {
    for (String key in Schicht_1c2.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(Schicht_1c2[key]),
        ),
        value: Schicht_1c2[key],
      ));
    }
  }

  final Schicht_1d1 = {
    "1": "Schicht 2a",
    "2": "Schicht 2b",
    "3": "Schicht 2c",
  };

  void populateSchicht_1d1() {
    for (String key in Schicht_1d1.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(Schicht_1d1[key]),
        ),
        value: Schicht_1d1[key],
      ));
    }
  }

  final Schicht_1d2 = {
    "1": "Schicht 2a",
    "2": "Schicht 2b",
    "3": "Schicht 2c",
    "4": "Schicht 2f",
    "5": "Schicht 2g",
  };

  void populateSchicht_1d2() {
    for (String key in Schicht_1d2.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(Schicht_1d2[key]),
        ),
        value: Schicht_1d2[key],
      ));
    }
  }

  final Schicht_1e1 = {
    "1": "Schicht 2a",
    "2": "Schicht 2b",
    "3": "Schicht 2c",
  };

  void populateSchicht_1e1() {
    for (String key in Schicht_1e1.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(Schicht_1e1[key]),
        ),
        value: Schicht_1e1[key],
      ));
    }
  }

  final Schicht_1e2 = {
    "1": "Schicht 2a",
    "2": "Schicht 2b",
    "3": "Schicht 2c",
    "4": "Schicht 2f",
    "5": "Schicht 2g",
  };

  void populateSchicht_1e2() {
    for (String key in Schicht_1e2.keys) {
      menuitems.add(DropdownMenuItem<String>(
        child: Center(
          child: Text(Schicht_1e2[key]),
        ),
        value: Schicht_1e2[key],
      ));
    }
  }

  void selected(selectedValue) {
    if (selectedValue == "1") {
      disabledropdown1 = false;
      disabledropdown2 = true;
      disabledropdown3 = true;
      disabledropdown4 = true;
      selValue1 = null;
      selValue2 = null;
      selValue3 = null;
      selValue4 = null;
    } else if (selectedValue == "2") {
      disabledropdown1 = false;
      disabledropdown2 = false;
      disabledropdown3 = true;
      disabledropdown4 = true;
      selValue1 = null;
      selValue2 = null;
      selValue3 = null;
      selValue4 = null;
    } else if (selectedValue == "3") {
      disabledropdown1 = false;
      disabledropdown2 = false;
      disabledropdown3 = false;
      disabledropdown4 = true;
      selValue1 = null;
      selValue2 = null;
      selValue3 = null;
      selValue4 = null;
    } else if (selectedValue == "4") {
      disabledropdown1 = false;
      disabledropdown2 = false;
      disabledropdown3 = false;
      disabledropdown4 = false;
      selValue1 = null;
      selValue2 = null;
      selValue3 = null;
      selValue4 = null;
    }
    setState(() {
      this.selectedValue = selectedValue;
    });
  }

  void secondselected(selValue1) {
    if (selValue1 == 'Schicht 1a') {
      if (selectedValue == "3") {
        menuitems = [];
        populateSchicht_1a1();
        selValue2 = null;
      } else if (selectedValue == "2") {
        menuitems = [];
        populateSchicht_1a2();
        selValue2 = null;
      }
    } else if (selValue1 == 'Schicht 1b') {
      if (selectedValue == "3") {
        menuitems = [];
        populateSchicht_1b1();
        selValue2 = null;
      } else if (selectedValue == "2") {
        menuitems = [];
        populateSchicht_1b2();
        selValue2 = null;
      }
    } else if (selValue1 == 'Schicht 1c') {
      if (selectedValue == "3") {
        menuitems = [];
        populateSchicht_1c1();
        selValue2 = null;
      } else if (selectedValue == "2") {
        menuitems = [];
        populateSchicht_1c2();
        selValue2 = null;
      }
    } else if (selValue1 == 'Schicht 1d') {
      if (selectedValue == "3") {
        menuitems = [];
        populateSchicht_1d1();
        selValue2 = null;
      } else if (selectedValue == "2") {
        menuitems = [];
        populateSchicht_1d2();
        selValue2 = null;
      }
    } else if (selValue1 == 'Schicht 1e') {
      if (selectedValue == "3") {
        menuitems = [];
        populateSchicht_1e1();
        selValue2 = null;
      } else if (selectedValue == "2") {
        menuitems = [];
        populateSchicht_1e2();
        selValue2 = null;
      }
    }
    setState(() {
      this.selValue1 = selValue1;
    });
  }

  void checkedfn1(_checked1) {
    if (_checked1 == true) {
      _checked2 = false;
      disableallg1 = true;
      disableallg2 = true;
      disableallg3 = true;
      disableallg4 = true;
      selAllg1 = null;
      selAllg2 = null;
      selAllg3 = null;
      selAllg4 = null;
    }
    setState(() {
      this._checked1 = _checked1;
    });
  }

  void checkedfn2(_checked2) {
    if (_checked2 == true) {
      disableallg1 = false;
      disableallg2 = false;
      disableallg3 = false;
      disableallg4 = false;
      selAllg1 = null;
      selAllg2 = null;
      selAllg3 = null;
      selAllg4 = null;
      _checked1 = false;
    } else if (_checked2 == false) {
      disableallg1 = true;
      disableallg2 = true;
      disableallg3 = true;
      disableallg4 = true;
      selAllg1 = null;
      selAllg2 = null;
      selAllg3 = null;
      selAllg4 = null;
    }
    setState(() {
      this._checked2 = _checked2;
    });
  }

  void checkedfn3(_checkedrb1) {
    if (_checkedrb1 == true) {
      _checkedrb2 = false;
      _checkedrb3 = false;
    }
    setState(() {
      this._checkedrb1 = _checkedrb1;
    });
  }

  void checkedfn4(_checkedrb2) {
    if (_checkedrb2 == true) {
      _checkedrb1 = false;
      _checkedrb3 = false;
    }
    setState(() {
      this._checkedrb2 = _checkedrb2;
    });
  }

  void checkedfn5(_checkedrb3) {
    if (_checkedrb3 == true) {
      _checkedrb2 = false;
      _checkedrb1 = false;
    }
    setState(() {
      this._checkedrb3 = _checkedrb3;
    });
  }

  //////////////////////////////////////////Dropdown-Menü 1////////////////////

//////////////////////////////////////////Auswahl der Schichten////////////////////

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: kopfzeile('Taupunkt Rechner'),
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
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/schichten.jpg'),
              alignment: Alignment.topRight)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Text('1. Auswahl der Schichten:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),

          // Dropdown-Menü Anzahl der Schichten
          Align(
            alignment: Alignment(-0.8, 0.9),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: DropdownButton(
                  value: selectedValue,
                  onChanged: (selectedValue) => selected(selectedValue),
                  items: Anzahl,
                  hint: Text('Anzahl der Schichten'),
                ),
              ),
            ),
          ),

          // Dropdown-Menü 1
          Align(
            alignment: Alignment(-0.8, 0.2),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: DropdownButton(
                  value: selValue1,
                  onChanged: disabledropdown1
                      ? null
                      : (selValue1) => secondselected(selValue1),
                  items: Schicht1,
                  hint: Text('Schicht 1'),
                ),
              ),
            ),
          ),

          // Dropdown-Menü 1.1
          Align(
            alignment: Alignment(-0.7, 0.2),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: DropdownButton(
                  value: selValue1,
                  onChanged: disabledropdown1
                      ? null
                      : (selValue1) => secondselected(selValue1),
                  items: Schicht1,
                  hint: Text('Baustoff'),
                ),
              ),
            ),
          ),

          //Dropdown-Menü 2
          Align(
            alignment: Alignment(-0.8, 0.2),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: DropdownButton(
                  value: selValue2,
                  onChanged: disabledropdown2
                      ? null
                      : (String value) => setState(() {
                            selValue2 = value ?? "";
                          }),
                  items: menuitems,
                  hint: Text('Schicht 2   '),
                ),
              ),
            ),
          ),

          // Dropdown-Menü 2.1
          Align(
            alignment: Alignment(-0.7, 0.2),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: DropdownButton(
                  value: selValue1,
                  onChanged: disabledropdown1
                      ? null
                      : (selValue1) => secondselected(selValue1),
                  items: Schicht1,
                  hint: Text('Baustoff'),
                ),
              ),
            ),
          ),

          //Dropdown-Menü 3
          Align(
            alignment: Alignment(-0.8, 0.2),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: DropdownButton(
                  value: selValue3,
                  onChanged: disabledropdown3
                      ? null
                      : (String value) => setState(() {
                            selValue3 = value ?? "";
                          }),
                  items: Schicht3,
                  hint: Text('Schicht 3'),
                ),
              ),
            ),
          ),

          // Dropdown-Menü 3.1
          Align(
            alignment: Alignment(-0.7, 0.2),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: DropdownButton(
                  value: selValue1,
                  onChanged: disabledropdown1
                      ? null
                      : (selValue1) => secondselected(selValue1),
                  items: Schicht1,
                  hint: Text('Baustoff'),
                ),
              ),
            ),
          ),

          //Dropdown-Menü 4
          Align(
            alignment: Alignment(-0.8, 0.2),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: DropdownButton(
                  value: selValue4,
                  onChanged: disabledropdown4
                      ? null
                      : (String value) => setState(() {
                            selValue4 = value ?? "";
                          }),
                  items: Schicht4,
                  hint: Text('Schicht 4'),
                ),
              ),
            ),
          ),

          // Dropdown-Menü 4.1
          Align(
            alignment: Alignment(-0.7, 0.2),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: DropdownButton(
                  value: selValue1,
                  onChanged: disabledropdown1
                      ? null
                      : (selValue1) => secondselected(selValue1),
                  items: Schicht1,
                  hint: Text('Baustoff'),
                ),
              ),
            ),
          ),

          SizedBox(height: 30),
          Divider(color: Colors.black),
          SizedBox(height: 10),

          //////////////////////////////////////////Klimabedingungen////////////////////

          Padding(
            padding: EdgeInsets.all(2.0),
            child: Text('2. Klimabedingungen:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),

          //Checkbox 1
          Align(
            alignment: Alignment(0.5, 0.2),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: CheckboxListTile(
                  title: Text('DIN 4108-3      //      -5 °C - 20 °C'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _checked1,
                  onChanged: (_checked1) => checkedfn1(_checked1),
                ),
              ),
            ),
          ),

          //Checkbox Allgemein
          Align(
            alignment: Alignment(-0.8, 1),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: CheckboxListTile(
                  title: Text('Allgemein'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _checked2,
                  onChanged: (_checked2) => checkedfn2(_checked2),
                ),
              ),
            ),
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text('Temp. I.:'),
            //Dropdown-Menü Allgemein 1
            Align(
              alignment: Alignment(-0.5, 0.2),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: DropdownButton(
                    value: selAllg1,
                    onChanged: disableallg1
                        ? null
                        : (String value) => setState(() {
                              selAllg1 = value ?? "";
                            }),
                    items: Temp,
                    hint: Text(' ° C'),
                  ),
                ),
              ),
            ),

            Text('Temp. A.:'),
            //Dropdown-Menü Allgemein 2
            Align(
              alignment: Alignment(-0.5, 0.2),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: DropdownButton(
                    value: selAllg2,
                    onChanged: disableallg2
                        ? null
                        : (String value) => setState(() {
                              selAllg2 = value ?? "";
                            }),
                    items: Temp,
                    hint: Text(' ° C'),
                  ),
                ),
              ),
            ),
          ]),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text('Rel. L.i: '),
            //Dropdown-Menü Allgemein 3
            Align(
              alignment: Alignment(-0.5, 0.2),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: DropdownButton(
                    value: selAllg3,
                    onChanged: disableallg3
                        ? null
                        : (String value) => setState(() {
                              selAllg3 = value ?? "";
                            }),
                    items: Temp,
                    hint: Text(' %     '),
                  ),
                ),
              ),
            ),

            Text('Rel. L.a:'),
            //Dropdown-Menü Allgemein 4
            Align(
              alignment: Alignment(-0.5, 0.2),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: DropdownButton(
                    value: selAllg4,
                    onChanged: disableallg4
                        ? null
                        : (String value) => setState(() {
                              selAllg4 = value ?? "";
                            }),
                    items: Temp,
                    hint: Text(' %'),
                  ),
                ),
              ),
            ),
          ]),

          SizedBox(height: 10),
          Divider(color: Colors.black),
          SizedBox(height: 10),

          //////////////////////////////////////////Randbedingungen////////////////////

          Padding(
            padding: EdgeInsets.all(2.0),
            child: Text('3. weitere Randbedingungen:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),

          SizedBox(height: 10),
          Align(
            alignment: Alignment(-0.8, 1),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Text('3.1 Wärmestromrichtung:',
                    style: TextStyle(fontSize: 16)),
              ),
            ),
          ),

          //Aufwärts Checkbox
          Align(
            alignment: Alignment(-0.8, 1),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: CheckboxListTile(
                  title: Text('Aufwärts'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _checkedrb1,
                  onChanged: (_checkedrb1) => checkedfn3(_checkedrb1),
                ),
              ),
            ),
          ),

          //Horzizontal Checkbox
          Align(
            alignment: Alignment(-0.8, 1),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: CheckboxListTile(
                  title: Text('Horizontal'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _checkedrb2,
                  onChanged: (_checkedrb2) => checkedfn4(_checkedrb2),
                ),
              ),
            ),
          ),

          //Abwärts Checkbox
          Align(
            alignment: Alignment(-0.8, 1),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: CheckboxListTile(
                  title: Text('Abwärts'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _checkedrb3,
                  onChanged: (_checkedrb3) => checkedfn5(_checkedrb3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/