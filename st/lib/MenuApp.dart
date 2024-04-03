import 'package:flutter/material.dart';
import 'CorrespondaceMedicale.dart';
import 'realisateurs.dart';
import 'certificats.dart';
import 'Serment.dart';
import 'Velirano.dart';
import 'codeDeontologie.dart';

class MenuApp extends StatefulWidget {
  const MenuApp({super.key});

  @override
  State<MenuApp> createState() => _MenuApp();
}

class _MenuApp extends State<MenuApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              margin:
                  EdgeInsets.all(20.0), // Marge de 10 pixels sur tous les côtés
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Column(
                children: [
                  const Text(
                      'La mise à jour des connaissances est une obligation pour tout Médecin. Conçue sous forme de modèles '
                      'thérapeutiques, cette brochure est réservée à l’usage des seuls médecins. Elle complète et remplace '
                      'l\'édition de 2019 et se veut être pratique et claire malgré son volume réduit. Elle présente une synthèse '
                      'des recommandations thérapeutiques de la Haute Autorité de la Santé (HAS), de l\'ANSM, des Sociétés '
                      'savantes. Notre vœu est que cet outil de prescription vous rende service dans votre pratique quotidienne. Il se peut '
                      'que des erreurs s’y soient glissées malgré la rigueur de sa réalisation. Nous déclinons toute responsabilité '
                      'quant aux conséquences qui pourraient en résulter. '
                      'Merci à tous ceux qui ont contribué à ce travail.'
                      '\n\nConfraternellement,\n\nDr Eric ANDRIANASOLO Président du Conseil national de l’Ordre des Médecins',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18.0,
                        fontStyle: FontStyle.italic,
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Voici les listes annexes: ",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto',
                              fontSize: 18.0,
                              fontStyle: FontStyle.italic,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CorrespodaceMedicale()));
                    },
                    child: Text("La correspondance médicale"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Serment()));
                    },
                    child: Text("Serment du médecin"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Velirano()));
                    },
                    child: Text("Veliranon'ny mpitsabo"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => codeDeontologie()));
                    },
                    child: Text("CODE DE DEONTOLOGIE "),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => certificats()));
                    },
                    child: Text("CERTIFICATS MEDICAUX"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Real()));
                    },
                    child: Text("LES REALISATEURS"),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
