import 'package:sample_app/main.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget kopfzeile(String title, BuildContext context) {
  return AppBar(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
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
        ),
      ]);
}

BoxDecoration Dropdecoration() {
  return BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 2,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
    borderRadius: BorderRadius.circular(24.0),
    color: Color.fromARGB(255, 255, 255, 255),
  );
}

Text DropInputText(String _selection) {
  return Text(
    '$_selection',
    style: TextStyle(
      fontSize: 16,
      color: Color.fromARGB(255, 0, 0, 0),
      height: 1,
    ),
    textAlign: TextAlign.center,
  );
}

class ScrollableWidget extends StatelessWidget {
  final Widget child;

  const ScrollableWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: child,
        ),
      );
}
