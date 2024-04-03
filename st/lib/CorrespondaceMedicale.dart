import 'package:flutter/material.dart';
import 'ContentApp.dart';

void main() => runApp(CorrespodaceMedicale());

class CorrespodaceMedicale extends StatelessWidget {
  const CorrespodaceMedicale({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Correspondance Medicale",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: const CorrespondanceApp(),
    );
  }
}

class CorrespondanceApp extends StatefulWidget {
  const CorrespondanceApp({super.key});
  @override
  State<CorrespondanceApp> createState() => _CorrespondanceApp();
}

class _CorrespondanceApp extends State<CorrespondanceApp> {
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
        title: const Text('Correspondance Medicale',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18.0,
              fontStyle: FontStyle.italic,
            )),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(20.0), // Marge de 10 pixels sur tous les côtés
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            children: [
              const Text('1-Les formules d\'introduction',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                  )),
              Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              const Text(
                  '\tLa correspondance médicale a une place importance dans notre pratique quotidienne. Bien écrire permet '
                  'de maintenir une bonne relation de confraternité. Voici quelques formules d’introduction qui serviront '
                  'surtout à nos jeunes confrères.\n\n'
                  'Habituellement, introduire une lettre par "Cher Confrère," ou "Chère Consœur,".\n\n'
                  '« Docteur, » est aussi poli sinon, « Monsieur » et « Madame » restent convenables si vous ne connaissez '
                  'ni le rang ni l’âge de votre correspondant.\n\n'
                  'A un professeur qui vous a enseigné, préférer « Cher Maître ». S’il ne vous a pas enseigné, choisissez « '
                  'Monsieur le Professeur ».\n\n'
                  '« Cher Ami » ou « Chère Amie » est plutôt utilisé par un enseignant pour écrire à son élève. S’il ne s’agit '
                  'pas de son élève, le professeur aura à mettre « Docteur, » ou « Cher Confrère » d’autant plus qu’il s’agisse '
                  'd’un médecin plus âgé que lui.\n '
                  '« Cher Ami » peut aussi être utilisé entre collègues qui se connaissent très bien mais il ne faut surtout '
                  'pas y voir une certaine impertinence. « Cher Collègue » est évidemment réservé à ceux qui travaillent ou '
                  'ont travaillé ensemble.\n\n'
                  'Surtout éviter les « Cher Jules », « Cher Professeur » et autres « Cher Docteur ».\n\n'
                  'Pour une correspondance par courriel, vous pouvez commencer par un « bonjour, » si la personne avec '
                  'qui vous correspondez vous est assez familière. Plus simple encore, le prénom peut être utilisé entre amis '
                  ': « Jules, bonjour. Je te prie de… » mais il vaut mieux s’en abstenir si la personne est plus âgée que vous. '
                  'Enfin, si vous devez citer la personne, mettez son nom après son titre mais jamais son prénom. (Ex : Dr '
                  'RAKOTOSALAMA et non Dr Jules).\n\n'
                  'Il faut admettre que nous correspondons dans une langue qui n’est pas la nôtre et dont nous ne '
                  'maîtrisons pas toutes les subtilités. Aussi est-il plus qu’important de respecter ces quelques règles\n\n ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                  )),
              SizedBox(
                height: 30.0,
              ),
              const Text('2-Le corps du texte',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                  )),
              Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              Text(
                'Ici, la politesse est toujours la règle. Préférez les formules toutes faites : « Auriez-vous l’amabilité de me '
                'transmettre le dossier médical de … » ou « Je me permets de vous adresser Madame R., 45 ans, pour… » '
                'ou pour un billet d’hospitalisation sans mention du médecin : « l’enfant R., 3 ans, est à hospitaliser en '
                'service de … pour… » ou encore « … est adressé en consultation externe de pédiatrie pour… ». Mettez '
                'toujours un diagnostic même si vous n’en avez pas la certitude. Faites attention à la transmission des '
                'informations sur le patient. Le secret médical s’impose aux médecins (et non aux patients !). La '
                'correspondance entre médecins et en particulier, la transmission d’informations sur le patient, doit être '
                'faite sous pli fermé avec la mention « Secret médical ». Autant que possible, utiliser la classification CIM '
                'pour certains diagnostics dont l’annonce est délicate (cancers, stade terminal d’une maladie etc…). '
                'Même pour une correspondance par courriel, veillez au style, à l’orthographe, à la conjugaison et surtout, '
                'évitez les abréviations et le style SMS. Soigner sa lettre c’est soigner son image. Cette lettre est votre '
                'ambassadrice.\n\n '
                'Il faut toujours répondre à une lettre. Ce n’est jamais du temps perdu et vous verrez ! Votre notoriété ne '
                'fera que croitre. « Cher Confrère, j’ai bien vu Madame R. que vous m’avez adressée pour… Elle a été '
                'opérée d’une…. le… Je vous remercie de votre confiance et je vous l’adresse à nouveau pour le suivi des '
                'soins… ». Oui, n’oubliez jamais de remercier….\n\n '
                'Enfin, terminez une lettre officielle par la formule « Je vous prie d’agréer, Monsieur le Professeur, '
                'l’expression de mes salutations distinguées » mais pour les correspondances courantes, et notamment '
                'pour les courriels, se limiter à « Respectueusement, » pour s’adresser à un ainé ou à un enseignant, « '
                'Mes salutations confraternelles » pour un confrère et « Cordialement, » pour un ami ou un cadet. ',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              const Text('3-Les ficelles du métier',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                  )),
              Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              const Text(
                  'Il arrive qu\’une lettre reste sans réponse… Que faire ? Attendez quelques temps et réécrivez. Il n\’y a pas '
                  'de mal à se faire et n\’oubliez pas que vous écrivez à un confrère qui a le devoir de vous répondre. « Je '
                  'me permets de vous renvoyer ma lettre du … au cas où vous ne l’auriez pas reçue… ». Ce sera une '
                  'occasion pour apporter d\’autres précisions. Et si vous n\’obtenez pas encore de réponse, prenez les choses '
                  'du bon côté ! Votre correspondant est probablement absent ou il n\’a reçu aucune de vos lettres…En tout '
                  'cas, soyez assuré qu\’un bon médecin vous répondra toujours.\n'
                  'Ayez du tact ! « Après les investigations, il s\’est avéré que l\’enfant R. présentait une méningite… ». Il n\’y '
                  'a donc pas lieu de préciser que votre correspondant s\’est trompé dans son diagnostic. Il n\’a pas les '
                  'moyens d\’exploration que vous avez.\n\n'
                  'De même, si vous constatez qu\’une faute a été commise, réparez-là avant tout et surtout n\’en parlez pas '
                  'au patient. Vous aussi, vous n\’êtes pas à l\’abri d\’une faute ou d\’une ignorance. Prenez toujours la défense '
                  'de votre confrère et sachez que d\’autres en feront autant pour vous. Attendez une autre occasion pour '
                  'lui en parler si vous y tenez vraiment. Là, c\’est l\’un des rares cas où écrire une lettre n\’est guère '
                  'recommandé.\n\n'
                  'Pour conclure, la correspondance médicale nous permet de remplir nos obligations éthiques,'
                  'professionnelles et relationnelles. Elle a été délaissée depuis quelques temps mais aujourd\’hui, la '
                  'profession souffre d\’une certaine déconsidération qu\’il est nécessaire de tout mettre en œuvre pour'
                  'redorer notre blason.\n',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
