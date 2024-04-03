//import 'dart:js_util';
import 'package:flutter/material.dart';
import 'ContentApp.dart';
import "Deo.dart";

void main() => runApp(codeDeontologie());

class codeDeontologie extends StatelessWidget {
  const codeDeontologie({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code de Deontologie',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      ),
      home: const CodeDeontologieApp(),
    );
  }
}

class CodeDeontologieApp extends StatefulWidget {
  const CodeDeontologieApp({super.key});
  @override
  State<CodeDeontologieApp> createState() => _CodeDeontologieApp();
}

class _CodeDeontologieApp extends State<CodeDeontologieApp> {
  final List<String> listResult = [];
  final List<String> listTitle = [
    'Chapitre I',
    'Chapitre II',
    'Chapitre III',
    'Chapitre IV',
    'Chapitre V',
    'Chapitre VI',
    'Chapitre VII',
    'Chapitre VIII',
    'Chapitre IX',
    'Chapitre X',
    'Chapitre XI',
    'Chapitre XII',
    'Chapitre XIII',
    'Chapitre XIV',
    'Chapitre XV',
    'Chapitre XVI',
    'Chapitre XVII',
    'Chapitre XVIII',
  ];
  List<String> test = [
    'DES DISPOSITIONS GENERALES\n\nArticle 1. - Conformément aux dispositions de la loi n° 2011-002 du 15 juillet 2012, celles du présent décret fixent le Code de Déontologie Médicale. Les dispositions du présent Code s\'imposent à tout médecin, à l’exception des médecins militaires lorsqu’ils ne pratiquent pas à titre privé, exerçant sur l\’ensemble du territoire de Madagascar.\nLes violations de ces dispositions relèvent de la juridiction disciplinaire de l\'Ordre, sans préjudice des poursuites pénales qu\'elles seraient susceptibles d\'entraîner. L\’Ordre des médecins est chargé de veiller au respect de ces dispositions.\n\nArticle 2.- La vocation du médecin consiste à défendre la santé physique et mentale de l\'homme et à\nsoulager sa souffrance dans le respect de la vie et de la dignité de la personne humaine sans discrimination d\'âge, de sexe, de race, de religion, de nationalité, de condition sociale et d\'idéologie politique, en temps de paix comme en temps de guerre.\n\nArticle 3.- Tout médecin qui s’installe à Madagascar doit pratiquer la langue Malagasy.',
    'DES ENGAGEMENTS DU MEDECIN\n\nArticle 4.- Le médecin doit, en toutes circonstances respecter les principes de moralité, de probité et de dévouement indispensables à l\'exercice de la médecine.\n\nArticle 5.- Le secret professionnel et médical, institués dans l\'intérêt des patients et du médecin,s\'imposent à tout médecin sauf dérogations établies par la loi et les règlements.\n\nArticle 6.- Le médecin ne peut aliéner son indépendance professionnelle sous quelque forme que ce soit.\n\nArticle 7.- Dans l\'exercice de sa profession, le médecin s\'engage à donner la priorité aux intérêts de santé du patient. Le médecin ne peut utiliser ses connaissances professionnelles que pour améliorer ou maintenir la santé de ceux qui se confient à lui ; en aucun cas il ne peut agir à leur détriment. Le médecin doit assister moralement le malade et éviter tout acharnement déraisonnable dans les investigations ou la thérapeutique, il ne doit pas lui faire courir un risque injustifié. Lorsqu\’un médecin discerne qu’une personne auprès de laquelle il est appelé est victime de sévices ou de privations, il doit mettre en œuvre les moyens les plus adéquats pour la protéger en faisant preuve de prudence et de circonspection.\nS\’il s\’agit d\’un mineur ou d\’une personne qui n\’est pas en mesure de se protéger en raison de son âge ou de son état physique ou psychique, il doit, sauf circonstances particulières qu\’il apprécie en conscience, informer les autorités judiciaires, médicales ou administratives.\n\nArticle 8.- Tout médecin est responsable de ses décisions et de ses actes.\n\nArticle 9.- Le médecin dans l\'exercice de sa profession, s\'interdit d’informer le patient ou de lui imposer ses opinions personnelles, philosophiques, religieuses, morales ou politiques.\n\nArticle 10.- Tout médecin doit s\'abstenir, même en dehors de l\'exercice de sa profession de tout acte de nature à déconsidérer celle-ci.\n\nArticle 11.- Sont interdits :\nI) Tout acte de nature à procurer au patient un avantage matériel injustifié ou illicite ;\nToute ristourne en argent ou en nature faite à un patient ;\nTout versement, acceptation ou partage clandestin d\'argent entre praticiens ;L\'acceptation d\'une commission pour tout acte médical notamment pour examens, prescriptions de médicaments, d\'appareils médicaux, envoi dans une station de cure ou maison de santé.\n\nArticle 12.- Le médecin doit, sans céder à aucune demande abusive, faciliter l\'obtention par le patient des avantages sociaux auxquels son état lui donne droit.\n\nArticle 13.- Est puni d\’une peine prévue par les dispositions de l\’article 160 du Code Pénal, tout membre du Corps médical qui délivre un rapport tendancieux ou un certificat médical de complaisance.Sont assimilés à un rapport tendancieux ou à un certificat médical de complaisance, le fait pour ces actes de viser :\nDe dispenser une personne d’une obligation de service public légalement due ou la soustraire à une contrainte prévue par la loi telle notamment une mesure de garde à vue ou une enquête judicaire ;\nD’éviter à une personne condamnée à une peine d’emprisonnement ou en détention préventive lescontraintes d’un séjour dans un établissement pénitentiaire en la faisant admettre, sans motifs dûment justifiés, dans un établissement hospitalier ou une formation sanitaire, hors du milieu carcéral ; De porter préjudice à l’une ou l’autre partie dans un procès sans qu’il y ait lieu d’établir l’existence d’un fait de corruption.\n\nArticle 14.- L’authenticité du contenu d’un certificat médical ne peut être remise en cause sur demande du patient ou de l’administration intéressée ;\nDans ce cas, il sera procédé à une contre-expertise par ordonnance du Président du Tribunal du ressort du territoire de l’autorité qui a délivré le certificat.\nTrois Médecins sont désignés pour cette contre-expertise dont : deux, ayant des connaissances sur la maladie du patient désignés par le Ministre chargé de la Santé ou son représentant, un généraliste désigné par le Conseil de l’Ordre National des Médecins.\nLe Président du Tribunal fixe le délai d’exécution de la contre-expertise compte tenu de l’état du patient.\nLe Procès-verbal de constatation est dressé en quatre (04) exemplaires destinés au Ministère chargé de la Santé, au Conseil de l’Ordre National des Médecins, au Service employeur du médecin et aux autorités judiciaires chargées de l’enquête.\n\nArticle 15.- Est interdit de pratiquer et ou de favoriser l’exercice illégal de la médecine. Le médecin s’interdit d’associer à sa consultation une personne non autorisée à exercer la médecine.\n\nArticle 16.- Les médecins ne peuvent proposer aux patients ou à leur entourage comme salutaire ou sans danger un remède ou un procédé insuffisamment éprouvé scientifiquement. Toute pratique de charlatanisme est interdite.\n\nArticle 17.- Le forfait en échange ou non d’une promesse d’efficacité d’un traitement est interdit en toutes circonstances.\n\nArticle 18.- Toute ordonnance, certificat, attestation ou document délivré par un médecin doit comporter :son identité ,sa spécialité ou ses compétences,ses coordonnées son numéro d’inscription au tableau de l’Ordre sa signature manuscrite\nIl doit être daté et rédigé lisiblement.',
    'DU CONSENTEMENT ECLAIRE\n\nArticle 19.- Sauf urgence, le médecin doit informer le patient sur les effets et les conséquences secondaires aux moyens diagnostics et thérapeutiques et recherchera le consentement du patient, surtout lorsque les actes proposés présentent un risque sérieux.\nLe médecin ne peut substituer sa propre conception de la qualité de la vie à celle de son patient.\n\nArticle 20.- Un médecin appelé à donner des soins à un mineur ou à un majeur protégé doit s\'efforcer de prévenir ses parents ou son représentant légal et d\'obtenir leur consentement.\nEn cas d\'urgence, le médecin doit donner les soins strictement nécessaires. Si l\'avis de l\'intéressé peut être recueilli, le médecin doit en tenir compte.',
    'DE L’INDEPENDANCE MORALE ET TECHNIQUE\n\nArticle 21.- Tant pour conseiller que pour agir, le médecin doit disposer de son entière liberté professionnelle et des conditions techniques et morales lui permettant d\'agir en toute indépendance.\nLe patient doit être informé si ces conditions n’étaient pas réunies.\nDans les limites fixées par les textes législatifs et réglementaires, le médecin est libre de ses prescriptions qui seront celles qu\'il estime les plus appropriées en la circonstance, en veillant à la bonne qualité, la sécurité et l\'efficacité des soins. Il doit tenir compte des avantages, des inconvénients et des conséquences des différentes investigations et thérapeutiques possibles.\n\nArticle 22.- Lorsque le médecin agit pour le compte d\'une autorité privée ou publique, pour une tierce personne ou une institution, il doit en informer le patient.',
    'DU SECRET PROFESSIONNEL\n\nArticle 23.- Le médecin est le confident nécessaire du patient. Il doit lui garantir le secret total de toutes les informations qu\'il aura recueillies et des constatations qu\'il aura effectuées lors de ses contacts avec lui.\nLe secret médical n\'est pas aboli par la mort des patients.\nLe médecin doit respecter la vie privée des patients et prendre toute mesure nécessaire pour rendre impossible la révélation de ce qu\'il aura appris a l\'occasion de l\'exercice de sa profession.\nLorsque le droit prévoit des exceptions à l\'obligation du secret médical, le médecin pourra recueillir l\'avis préalable de l\'Ordre des médecins.\n\nArticle 24.- Toute banque de données médicales informatisée devrait être placée, pour le respect de l\’éthique professionnelle, sous la responsabilité d\'un médecin nommément désigné. Lors de la constitution de banques électroniques de données, le médecin doit veiller à ne pas mettre en danger ou amoindrir le droit du patient à l\'intimité, à la sécurité et à la protection de sa vie privée.\nLes banques de données médicales ne peuvent avoir aucun lien avec d\'autres banques de données.\n\nArticle 25.- Lorsque la loi et les règlements prévoient qu\'un patient peut avoir accès à son dossier par l\'intermédiaire d\'un médecin, celui-ci doit remplir cette mission en tenant compte des seuls intérêts du patient et de récuser le cas échéant.',
    'DE LA COMPETENCE DU MEDECIN\n\nArticle 26.- Le médecin doit faire appel aux ressources médicales nécessaires dans l’intérêt de son patient.\n\nArticle 27.- Le médecin ne peut faire état d\'une compétence qu\'il ne possède pas.\nIl doit faire appel à un confrère dès qu\'un examen ou un traitement dépasse ses compétences.\n\nArticle 28.- L’exercice de la médecine implique en toutes circonstances le respect constant de la vie, de l\'autonomie morale et du libre choix du patient. Cependant le médecin peut, en cas d\'affection incurable et terminale, se limiter à soulager les souffrances physiques et morales du patient en lui donnant les traitements appropriés et en maintenant autant que possible la qualité d\'une vie qui s\'achève. Le médecin n\'a pas le droit de provoquer délibérément la mort.',
    'DE LA GREFFE D\'ORGANES\n\nArticle 29.- Les prélèvements d’organes peuvent être effectués chez un malade ou un accidenté pour lequel il est impossible d’inverser le processus terminal de cessation des fonctions vitales entretenues artificiellement. Les médecins s’assureront du décès du patient en tenant compte des données les plus récentes disponibles de la science. Au moins deux médecins veilleront à établir séparément un document de cette situation.\nIls seront indépendants de l\'équipe chargée de la greffe.\n\nArticle 30.- Les médecins chargés de prélever un organe destiné à la greffe peuvent appliquer des traitements particuliers visant à garder en activité les organes destinés à cette greffe.\n\nArticle 31.- Les médecins préleveurs s\'assureront par tous les moyens possibles de ce que le donneur n\'a pas exprimé d\'avis de son vivant, ni par écrit, ni auprès de ses proches',
    'DE LA REPRODUCTION\n\nArticle 32.- Le médecin donnera au patient et à sa demande tout renseignement utile en matière de reproduction et de contraception. Il est conforme à l’éthique pour un médecin, en raison de ses propres convictions, de refuser d\'intervenir dans le processus de reproduction en invitant les intéressés à solliciter l\’avis d\'autres confrères.',
    'DES RECHERCHES BIOMEDICALES ET DE L’EXPERIMENTATION SUR L’HOMME\n\nArticle 33.- Le médecin ne peut participer à des recherches biomédicales sur les personnes que dans les conditions prévues par la loi. Il doit s\'assurer de la régularité et de la pertinence de ses recherches ainsi que de l\'objectivité de leurs conclusions. \nLe médecin traitant qui participe à une recherche biomédicale en tant qu’investigateur doit veiller à ce que la réalisation de l\'étude n\'altère ni la relation de confiance qui le lie au patient ni la continuité des soins.\n\nArticle 34.- Le progrès en médecine est fondé sur la recherche qui ne peut se passer d\'une expérimentation portant sur l\'homme. Le protocole de toute expérience projetée sur l\'homme doit être soumis au préalable à une commission d\'éthique indépendante de l\'expérimentateur pour avis et pour conseil.\n\nArticle 35.- Le consentement libre et éclairé du sujet de l\'expérience sera recueilli après l\'avoir informé de manière adéquate des objectifs, méthodes et bénéfices escomptés ainsi que des risques et désagréments potentiels, de son droit de ne pas participer à l\'expérimentation et de s\'en retirer à tout moment.\n\nArticle 36.- Le médecin ne peut associer la recherche biomédicale avec des soins médicaux, en vue de l\'acquisition de connaissances médicales nouvelles, que dans la mesure où cette recherche biomédicale est justifiée par une utilité diagnostique ou thérapeutique potentielle à l\'égard de son malade',
    'DES TORTURES ET DES TRAITEMENTS INHUMAINS\n\nArticle 37.- Le médecin ne doit jamais participer ou contribuer à des actes de torture ou autre forme de traitements cruels, inhumains ou dégradants quels que soient les arguments invoqués (faute commise, accusation, croyances…) et ce dans toutes circonstances. \n\nArticle 38.- Le médecin ne doit jamais utiliser ses connaissances, sa compétence ou son habileté en vue de faciliter l\'emploi de la torture ou de tout autre procédé cruel inhumain ou dégradant utilisé à quelque fin que ce soit.\n\nArticle 39.- Un médecin amené à examiner une personne privée de liberté ou à lui donner des soins, ne peut directement ou indirectement, ne serait-ce par sa seule présence, favoriser ou cautionner une atteinte à l\'intégrité physique ou mentale de cette personne ou à sa dignité.S\'il constate que cette personne a subi des sévices ou des mauvais traitements, il doit en informer les autorités administratives sanitaires et les autorités judiciaires.',
    'DU LE MEDECIN ET DE LA SOCIETE\n\nArticle 40.- Pour accomplir sa mission, le médecin a le droit à la protection légale de son indépendance professionnelle en temps de paix comme en temps de guerre. L’arrestation d’un médecin pour des motifs professionnels doit avoir l’avis du Conseil de l’Ordre des Médecins.\n\nArticle 41.- Le médecin a pour devoir d\'attirer l\'attention de la collectivité sur les insuffisances dans les domaines de la prévention et de l\'indépendance professionnelle des praticiens.\n\nArticle 42.- Le médecin est tenu de participer à l\'élaboration et à l\'exécution de toutes les mesures collectives visant à améliorer la prévention, le diagnostic et le traitement des maladies. En particulier, il est tenu de collaborer du point de vue médical à l\'organisation de secours, notamment en cas de situation de catastrophe.\n\nArticle 43.- Le médecin doit participer, dans la mesure de ses compétences et de ses possibilités à l\'amélioration constante de la qualité des soins et au perfectionnement continu de ses connaissances de manière à offrir au patient des soins conformes aux données de la science. Il doit prendre toutes dispositions nécessaires pour participer à des sessions de formation médicale continue.',
    'DE LA CONFRATERNITE\n\nArticle 44.- Les règles de la confraternité sont instaurées pour préserver l’honneur de la profession médicale et dans l\'intérêt des patients. Elles visent à éviter à ceux-ci d\'être victimes de manœuvres de concurrence déloyale entre médecins.\n\nArticle 45.- Le médecin appelé à donner des soins à un patient déjà en traitement chez un de ses confrères, devrait s\'efforcer d\'entrer en relation avec ce dernier dans l\'intérêt du malade et cela dans le respect du secret médical.\n\nArticle 46.- Tout propos ayant pour objet de dénigrer ou de déconsidérer un confrère constitue pour un médecin, une faute professionnelle grave.\n\nArticle 47.- Le devoir de confraternité n’interdit pas au médecin de communiquer à l\'Ordre des médecins les manquements aux règles d\'éthique médicale dont il a eu connaissance.\n\nArticle 48.- C’est un acte de solidarité généreuse de prendre la défense d’un confrère injustement attaqué, même après la mort de ce dernier.\n\nArticle 49.- Tout comportement d’un médecin tendant à soustraire la clientèle à un praticien est un manquement grave aux devoirs de confraternité.',
    'DE LA PUBLICITE\n\nArticle 50.- Le médecin a pour devoir de faire connaître en priorité dans la presse professionnelle les découvertes qu\'il aura faites ou les conclusions de ses études scientifiques en matière de diagnostic ou de thérapeutique. Il les soumettra à la critique de ses confrères selon les réglementations en vigueur avant d\'en donner connaissance au public non médical.\n\nArticle 51.- Toute exploitation publicitaire d\'un succès médical ou d\'utilisation de matériel d\'investigation médicale au profit d\'une personne, d\'un groupe ou d\'une école est contraire à l\'éthique médicale.\n\nArticle 52.- L\'exercice de la profession médicale n\'est ni une activité artisanale ni une activité commerciale. Quel que soit son mode d’exercice, salarié, libéral ou public, le médecin peut faire connaître ses titres et qualifications ainsi que toutes les autres indications nécessaires à l\'information du patient, ceci conformément aux dispositions prises par l\'Ordre des Médecins et dans le cadre de la loi.\n\nUne telle information doit être clairement distinguée de toute publicité ou de toute information susceptible de tromper les patients.\n\nArticle 53.- Le médecin ne doit ni tolérer, ni contribuer à la publication de reportages à caractère publicitaire.il ne doit pas non plus tolérer que les organismes publics ou privés dans lesquels il exerce ou auxquels il prête son concours utilisent son nom ou son activité professionnelle à des fins publicitaires.\n\nArticle 54.-Le médecin peut participer à des reportages publics dans la presse, à la radio ou à la télévision dans la mesure ou ils servent à informer la population en matière de santé.\n\nArticle 55.- Lorsque le médecin participe à une action d\'information du public à caractère éducatif et sanitaire, quel que soit le moyen de diffusion, il doit alors ne faire état que de données confirmées, faire preuve de prudence et avoir le souci des répercussions de ses propos auprès du public.\n\nArticle 56.- Le médecin doit s\'abstenir de faire de la publicité pour sa propre activité. Il doit également se garder de toute attitude publicitaire personnelle ou en faveur d\'une institution ou d\’un produit pharmaceutique.\n\nArticle 57.- Le médecin ne peut faire ni réclame, ni publicité. Il n\'a pas le droit de faire distribuer dans le public des tracts pour s\'attirer de la clientèle.\n\nArticle 58.- Les indications que le Médecin est autorisé à faire figurer à la porte de son cabinet , sur sa carte de visite, sur ses feuilles d’ordonnance ou dans un annuaire professionnel, sont :son nom et ses prénoms, son adresse professionnelle, son numéro d’inscription au Tableau de l’Ordre , les titres qu’il peut justifier par des diplômes ou des certificats dont copies certifiées sont déposées à l’Ordre des Médecins, les qualifications reconnues par l’Ordre des Médecins, les distinctions honorifiques reconnues par l’Etat et les jours et heures de consultation.\n\nArticle 59.- Les médecins ne doivent pas divulguer dans les milieux médicaux un procédé nouveau de diagnostic ou de traitement insuffisamment éprouvé sans accompagner leur communication des réserves qui s\'imposent.\n\nArticle 60.- Il est interdit aux médecins, de distribuer à des fins lucratives des médicaments, sauf dérogation accordée dans les conditions prévues par les dispositions réglementaires\n\nArticle 61.- Tout compérage entre médecins, chirurgiens-dentistes, pharmaciens, auxiliaires médicaux ou toutes autres personnes physiques ou morales est interdit. Il est interdit à un médecin de donner des consultations dans les locaux commerciaux où sont mis en vente des médicaments ou des appareils médicaux, ainsi que dans les dépendances des dits locaux.\n\nArticle 62.- Les médecins doivent entretenir entre eux des relations de bonne confraternité. Ils se doivent une assistance professionnelle et morale. Un médecin malade a le droit d’être traité gratuitement par le praticien de son choix et recevoir les soins appropriés. Sa femme et ses enfants à charge ont les mêmes droits d’assistance, même après la mort du médecin.\n\nArticle 63.- L\'exercice de la médecine foraine est formellement interdit. Il est aussi interdit d\'exercer la médecine sous un pseudonyme.',
    'DE LA CONTINUITE DES SOINS\n\nArticle 64.- Le médecin, quelle que soit sa spécialité, doit considérer comme un devoir de donner les soins d\'urgence à un malade en danger immédiat dans la mesure de ses possibilités.\n\nArticle 65.- Le médecin qui accepte de donner des soins à un patient s\'engage à en assurer la continuité au besoin avec l\'aide d’un confrère. Il a le devoir de référer le patient en cas de nécessité',
    'DU LIBRE CHOIX\n\nArticle 66.- Le libre choix du médecin par le malade constitue un principe fondamental de la relation entre le Médecin et son patient. Le médecin doit respecter et faire respecter cette liberté de choix.Le médecin, quant à lui, peut refuser de donner des soins, sauf lorsqu\'il s\'agit d\'un patient en danger.\n\nArticle 67.- Dans toutes les formes d\'exercice en commun de la profession médicale, il convient de veiller à ce que soient préservés le libre choix du médecin par le patient et la liberté de prescription et de soins du médecin.',
    'DE LA GREVE MEDICALE\n\nArticle 68.- Lorsqu\'un médecin décide de participer à un refus collectif organisé de soins, il n\'est pas dispensé de ses obligations éthiques vis-à-vis des patients à qui il doit garantir les soins urgents et ceux nécessaires aux malades en traitement.',
    'DES HONORAIRES \n\nArticle 69.- Le médecin tiendra compte, dans l\'établissement de ses honoraires, des références fixées par la réglementation en vigueur, de l\'importance des prestations rendues, des circonstances particulières éventuelles et de sa propre compétence.',
    'DES DISPOSITIONS DIVERSES\n\nArticle 70.- Tout médecin, lors de son inscription au Tableau, doit affirmer devant le Conseil de l\'Ordre qu\'il a eu connaissance du présent Code et s\'engager sous serment et par écrit à le respecter. Le non respect des dispositions du présent code l\'expose à des poursuites disciplinaires.\n\nArticle 71.- Toute déclaration volontairement inexacte, liée à sa profession, faite au Conseil de l\'Ordre par un médecin entraîne des poursuites disciplinaires.\n\nArticle 72.- Un Règlement Intérieur de fonctionnement sera établi par le Conseil National de l\'Ordre des Médecins en application du présent Code.. Tout amendement à ce Règlement Intérieur doit être soumis à l\'approbation du Conseil National.\n\nArticle 73.- Sont abrogées toutes dispositions antérieures contraires au présent décret notamment celles du décret n° 98-0945 du 04 novembre 1998 portant Code de Déontologie Médicale.\n\nArticle 74.- Le Garde des Sceaux, Ministre de la Justice, le Ministre de la Santé Publique, le Ministre de la Fonction Publique, du Travail et des Lois Sociales, le Ministre de l\'Enseignement Supérieur, sont chargés, chacun en ce qui le concerne, de l\'application du présent décret, qui sera publié au Journal Officiel de la République.\nFait à Antananarivo, le 13 juin 2012',
  ];
  late Map<String, String> tab = Map.fromIterables(listTitle, test);
  Widget myDrawerHeader() {
    return DrawerHeader(
      child: Column(
        children: [
          const Text('Les Chapitres ', style: TextStyle(color: Colors.white)),
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
              builder: (context) => Deo(
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
          title: const Text('CODE DE DÉONTOLOGIE',
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
        "DECRET N°2012-0632 PORTANT CODE DE DEONTOLOGIE MEDICALE\n\nRegarder  les chapitres dans le menu de navigation",
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
        ),
      )),
    );
  }
}
