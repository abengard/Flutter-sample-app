import 'package:sample_app/main.dart';
import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  List<ExpansionItem> items = <ExpansionItem>[
    ExpansionItem(
        header: "Hier steht die erste Frage",
        body: "Hier steht dazu die 1 Informationen"),
    ExpansionItem(
        header: "Hier steht die zweite Frage",
        body: "Hier steht dazu die 2 Informationen"),
    ExpansionItem(
        header: "Hier steht die dritte Frage",
        body: "Hier steht dazu die 3 Informationen"),
    ExpansionItem(
        header: "Hier steht die vierte Frage",
        body: "Hier steht dazu die 4 Informationen"),
    ExpansionItem(
        header: "Hier steht die fünfte Frage",
        body: "Hier steht dazu die 5 Informationen"),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Text(
            'FAQ',
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
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  items[index].isExpanded = !items[index].isExpanded;
                });
              },
              children: items.map((ExpansionItem item) {
                return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        child: Text(item.header),
                      );
                    },
                    isExpanded: item.isExpanded,
                    body: Container(
                      child: Text(item.body),
                    ));
              }).toList(),
            )
          ],
        ));
  }
}

class ExpansionItem {
  bool isExpanded;
  final String header;
  final String body;

  ExpansionItem(
      {this.isExpanded = false, required this.header, required this.body});
}
