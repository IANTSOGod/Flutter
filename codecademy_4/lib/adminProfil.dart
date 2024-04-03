import 'package:flutter/material.dart';
import 'profil.dart';

void main() {
  runApp(Admin());
}

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Admin profil",
      home: AdminHome(),
    );
  }
}

class AdminHome extends StatefulWidget {
  @override
  _AdminHomestate createState() => _AdminHomestate();
}

class _AdminHomestate extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profil()));
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text(
          "Informations personnelles",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: const Text("Adding the content here"),
    );
  }
}
