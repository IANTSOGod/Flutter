import 'package:flutter/material.dart';
import 'ContentApp.dart';

void main() {
  runApp(const Real());
}

class Real extends StatelessWidget {
  const Real({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Réalisateurs",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        ),
        home: const Realisateur());
  }
}

class Realisateur extends StatelessWidget {
  const Realisateur({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContentApp()),
            );
          },
        ),
        title: Text("Les réalisateurs",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18.0,
              fontStyle: FontStyle.italic,
            )),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Container(
          // Pour afficher une image depuis les assets, utilisez AssetImage
          child: Image.asset(
            'assets/realisateurs.png', // Chemin vers votre image dans les assets
            width: 800, // Largeur de l'image
            height: 800, // Hauteur de l'image
          ),
        ),
      ),
    );
  }
}
