import "package:flutter/material.dart";
import "ContentApp.dart";

class Maladie extends StatelessWidget {
  String titre = "test";
  String Description = "test";

  Maladie({super.key, required String title, required String description}) {
    this.titre = title;
    this.Description = description;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Maladie",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      ),
      home: MaladieApp(titre: titre, description: this.Description),
    );
  }
}

class MaladieApp extends StatefulWidget {
  final String titre;
  final String description;

  MaladieApp({Key? key, required this.titre, required this.description})
      : super(key: key);

  @override
  _MaladieAppState createState() => _MaladieAppState();
}

class _MaladieAppState extends State<MaladieApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContentApp()),
              );
            },
          ),
          title: Text(widget.titre,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
              )),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ListView(
          children: [
            Container(
              margin:
                  EdgeInsets.all(20.0), // Marge de 10 pixels sur tous les côtés
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Text(widget.description,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                  )),
            ),
          ],
        ));
  }
}
