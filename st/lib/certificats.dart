//import 'dart:js_util';
import 'package:flutter/material.dart';
import 'ContentApp.dart';
import "Cert.dart";

void main() => runApp(certificats());

class certificats extends StatelessWidget {
  const certificats({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Certificats',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      ),
      home: const certificatApp(),
    );
  }
}

class certificatApp extends StatefulWidget {
  const certificatApp({super.key});
  @override
  State<certificatApp> createState() => _certificatApp();
}

class _certificatApp extends State<certificatApp> {
  final List<String> listResult = [];
  final List<String> listTitle = [
    'Certificat d\'aptitude',
    'Coups et blessures',
    'Certificats de décès',
    'Certificats d\'inaptitude',
    'Reprise scolaire',
    'Certificats médical pour viol',
    'FORME DE REDACTION DU RAPPORT D’EXPERTISE MEDICO-LEGALE'
  ];
  List<String> test = [
    'Je soussigné, JR, docteur en médecine, certifie qu\'à l\'examen de ce jour, l\'enfant XX, 13 ans, ne présente aucune manifestation pathologique qui pourrait contre-indiquer la pratique de la natation. Certificat remis à sa mère pour servir et faire valoir ce que de droit.\n\nFait à Antananarivo ce 21 août 2011\n\nSignature',
    'Je soussigné, JR, docteur en médecine, certifie avoir examiné ce 21 août 2011 à 08 heures 30 une dame qui m\'a déclaré se nommer RAMANAVY Jeanne, être âgée de 34 ans et domiciliée lot 24 H, Ankadifotsy Antananarivo.Elle me dit avoir été victime d\'une allégation de coups par un individu ce même jour vers 06 heures à son domicile. Elle aurait reçu des coups de pieds et de poings. Elle n\'aurait pas perdu connaissance. A l\'examen, je constate :\n- une ecchymose sur la joue droite ;- des égratignures sur le bras et l\'avant-bras gauche ;\n- une plaie linéaire de 3 cm au niveau de l\'avant-bras gauche ayant nécessité 3 points de suture.Son état de santé nécessite la prise d\'antibiotiques de couverture et d\'antalgiques ainsi qu\'une ITT de 4 jours sauf complications éventuelles.Certificat remis en mains propres pour servir et faire valoir ce que de droit.\nFait à Antananarivo ce 21 août 2011\nSignature',
    'Je soussigné, JR, docteur en médecine, certifie que la mort de la personne sous-nommée est réelle et constante. \nNom:\n Prénom: \nDate et lieu de naissance:\nFils de:\net de:\n Adresse:\n Date et heure du décès:\n Cause du décès:\nFait à Antananarivo ce 21 août 2011\nSignature\nNB: Le certificat doit être adressé sous pli fermé au Médecin Chef du BMH pour ceux qui exercent dans une commune urbaine et au Médecin Chef du CSB2 pour ceux des communes rurales avec la mention SECRET MEDICAL. Ne jamais délivrer de certificat en cas de doute sur la cause du décès. Laisser ce soin aux autorités.',
    'Je soussigné, JR, docteur en médecine, certifie que M. XX, 73 ans, domicilié lot... ne peut maintenir une station debout prolongée en raison de son état de santé.Certificat remis en mains propres pour servir et faire valoir ce que de droit.\nFait à Antananarivo ce 21 août 2011\nSignature',
    'Je soussigné, JR, docteur en médecine, certifie que l\'enfant XX, 13 ans, a dû garder la chambre du...au... Il peut dorénavant reprendre sa classe à compter de ce jour sans aucune restriction.Certificat remis à sa mère pour servir et faire valoir ce que de droit.\nFait à Antananarivo ce 21 août 2011\nSignature',
    'Je soussigné, Docteur X … certifie avoir examiné ce jour à … heures une dame qui m\'a déclaré se nommer Y …R et être âgée de… ans.Elle me dit avoir été victime d’une agression sexuelle, le … (date), à … (heure), à … (lieu), de la part d’un individu, de plusieurs individus (ne jamais citer de noms) .Elle se plaint de … (exemples : peur, impossibilité de s’alimenter et de dormir, remémoration incessante de la scène de violence …).Elle présente un état général de … (exemples : prostration, état dépressif, agitation … Préciser tous les signes psycho-traumatiques). A l’examen physique, je constate :\n-des traces ecchymotiques au niveau de …\n-des érosions cutanées,\n-des traces de griffures,\n-des traces de strangulation …\nA l’examen gynécologique, elle présente :\n-des signes de défloration récente ou ancienne,\n-des lésions traumatiques …\nA l’examen anal, elle présente :\nDes prélèvements vaginaux ont été effectués à la recherche de spermatozoïdes et de MST (préciser les autres examens de laboratoire demandés).\nEn l’absence de contraception orale, elle a reçu une contraception d’urgence.\nEn conclusion, Madame Y … présente des traces de violences récentes et une réaction psychique à l’agression qu’elle dit avoir subie.\nCertificat établi à la demande de l’intéressée et remis en mains propres pour servir et faire valoir ce que de droit\nFait à Antananarivo, ce 21 août 2011\nSignature',
    'Je, soussigné(e). Dr …\nDans le Service …\nPrête serment d’apporter mon concours à la justice en mon honneur et conscience\nEt certifie avoir examiné ce … (date) à … (heures)\nM …, né(e) le …\nEn présence de …\nSur réquisition de M/Mme …, Officier de Police Judiciaire …\nA l’anamnèse, la victime a déclaré avoir été victime d’une agression sexuelle le (heure, jour, mois, année)……………….A : (lieu) ……………………………….Par (personne connue ou inconnue) : ………………………………..\nExamen somatique : développements des caractères sexuels secondaires, (seins, poils pubiens, …)\nExamen physique (description détaillée des lésions, de leur emplacement, de leur étendue, de leur caractère ancien ou récent et de leur gravité) : …………………………\nExamen génital (signe de violence et d’agression, signe d’une défloration récente ou ancienne,d’ecchymoses, d’écorchures, etc) : ……………..\nExamen anal : …………………………..\nIl a été pratiqué des prélèvements …\nConclusion : …\nFait le …\nDr …\nRapport d’expertise médico-légale établi et remis aux autorités requérantes'
  ];

  late Map<String, String> tab = Map.fromIterables(listTitle, test);
  Widget myDrawerHeader() {
    return DrawerHeader(
      child: Column(
        children: [
          const Text('Les certificats ', style: TextStyle(color: Colors.white)),
          SizedBox(
              height: 20), // Espacement entre le texte et la barre de recherche
          TextField(
            decoration: InputDecoration(
              hintText: 'Rechercher...',
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (value) {
              rechercherElement(value);
            },
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
      ),
    );
  }

  void rechercherElement(String recherche) {
    listResult.clear();
    if (recherche.isEmpty) {
      listResult.addAll(listTitle);
    } else {
      for (String element in listTitle) {
        if (element.toLowerCase().contains(recherche.toLowerCase())) {
          listResult.add(element);
        }
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<ListTile> listTiles = (listResult.isEmpty ? listTitle : listResult)
        .asMap()
        .entries
        .map((entry) {
      final index = entry.key;
      final element = entry.value;
      final description = tab[
          element]; // Utilise element comme clé pour récupérer la valeur dans tab
      return ListTile(
        title: Text('$element'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Cert(
                title: element,
                description: description ??
                    '', // Utilise la valeur trouvée dans tab comme description
              ),
            ),
          );
        },
      );
    }).toList();
    return Scaffold(
      appBar: AppBar(
          title: const Text('DIFFERENTS SORTES DE CERTIFICATS',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
              )),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContentApp()),
                  );
                },
                icon: Icon(Icons.arrow_back))
          ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            myDrawerHeader(),
            ...listTiles,
          ],
        ),
      ),
      body: Center(
          child: const Text(
        "Regarder  les certificats dans le menu de navigation",
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
        ),
      )),
    );
  }
}
