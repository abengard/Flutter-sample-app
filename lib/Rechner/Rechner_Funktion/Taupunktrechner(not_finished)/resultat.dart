import 'package:flutter/material.dart';
import 'package:sample_app/widgets.dart';

class Resultat extends StatefulWidget {
  const Resultat({Key? key}) : super(key: key);

  @override
  State<Resultat> createState() => _ResultatState();
}

class _ResultatState extends State<Resultat> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: kopfzeile('Ergebnis', context),
    );
  }
}
