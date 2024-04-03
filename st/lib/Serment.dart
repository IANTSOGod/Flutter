import 'package:flutter/material.dart';
import 'ContentApp.dart';

void main() => runApp(Serment());

class Serment extends StatelessWidget {
  const Serment({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      ),
      home: const SermentApp(),
    );
  }
}

class SermentApp extends StatefulWidget {
  const SermentApp({super.key});
  @override
  State<SermentApp> createState() => _SermentApp();
}

class _SermentApp extends State<SermentApp> {
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
        title: const Text('Serment du médecin',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 15.0,
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
              child: Column(
                children: [
                  const Text(
                    'Un nouveau serment, version moderne du serment d\’Hippocrate pour les médecins du monde entier a '
                    'été approuvé par l\’Association médicale mondiale.'
                    'Des représentants des médecins des quatre coins du monde, réunis à Chicago à l\’occasion de l\’Assemblée '
                    'générale de l\’Association médicale mondiale, ont approuvé aujourd\’hui les modifications apportées à la '
                    'Déclaration de Genève, qui avait été adoptée par l\’Association en 1948.',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'La déclaration de Genève',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  const Text(
                    'Adoptée par la 2e Assemblée Générale de l’Association Médicale Mondiale Genève (Suisse), Septembre 1948 '
                    'Et amendée par la 22e Assemblée Médicale Mondiale, Sydney, Australie, Août 1968 '
                    'Et la 35e Assemblée Médicale Mondiale, Venise, Italie, Octobre 1983 '
                    'Et la 46e Assemblée générale, Stockholm, Suède, Septembre 1994 '
                    'Et révisée par la 170e Session du Conseil, Divonne-les-Bains, France, Mai 2005 '
                    'Et par la 173e Session du Conseil, Divonne-les-Bains, France, Mai 2006 '
                    'Et amendée par la 68ème Assemblée générale, Chicago, Etats-Unis, Octobre 2017 ',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'Le serment du médecin',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  const Text(
                    'EN QUALITÉ DE MEMBRE DE LA PROFESSION MÉDICALE '
                    'JE PRENDS L’ENGAGEMENT SOLENNEL de consacrer ma vie au service de l’humanité ;\n\n'
                    'JE CONSIDÉRERAI la santé et le bien-être de mon patient comme ma priorité ;\n\n'
                    'JE RESPECTERAI l’autonomie et la dignité de mon patient ;\n\n'
                    'JE VEILLERAI au respect absolu de la vie humaine ;\n\n'
                    'JE NE PERMETTRAI PAS que des considérations d’âge, de maladie ou d’infirmité, de croyance, d’origine '
                    'ethnique, de genre, de nationalité, d’affiliation politique, de race, d’orientation sexuelle, de statut social '
                    'ou tout autre facteur s’interposent entre mon devoir et mon patient ;\n\n'
                    'JE RESPECTERAI les secrets qui me seront confiés, même après la mort de mon patient ;\n\n'
                    'J’EXERCERAI ma profession avec conscience et dignité, dans le respect des bonnes pratiques médicales ;\n\n'
                    'JE PERPÉTUERAI l’honneur et les nobles traditions de la profession médicale ;\n\n'
                    'JE TÉMOIGNERAI à mes professeurs, à mes collègues et à mes étudiants le respect et la reconnaissance '
                    'qui leur sont dus ;\n\n'
                    'JE PARTAGERAI mes connaissances médicales au bénéfice du patient et pour les progrès des soins de '
                    'santé ;\n\n'
                    'JE VEILLERAI à ma propre santé, à mon bien-être et au maintien de ma formation afin de prodiguer des '
                    'soins irréprochables ;\n\n'
                    'JE N’UTILISERAI PAS mes connaissances médicales pour enfreindre les droits humains et les libertés '
                    'civiques, même sous la contrainte ;\n\n'
                    'JE FAIS CES PROMESSES sur mon honneur, solennellement, librement.',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
