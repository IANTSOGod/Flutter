import 'package:flutter/material.dart';
import 'ContentApp.dart';

void main() => runApp(Velirano());

class Velirano extends StatelessWidget {
  const Velirano({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      ),
      home: const VeliranoApp(),
    );
  }
}

class VeliranoApp extends StatefulWidget {
  const VeliranoApp({super.key});
  @override
  State<VeliranoApp> createState() => _VeliranoApp();
}

class _VeliranoApp extends State<VeliranoApp> {
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
        title: const Text('Veliranon\'ny mpitsabo',
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
              child: Column(
                children: [
                  const Text(
                    'Nadikan\'ny Akademia Malagasy\n\n'
                    ' Amin’ny maha-mpikambana ahy eo amin’ny sehatry ny asa fitsaboana\n'
                    ' Dia manaiky an-tsitrapo eto ampahibemaso aho fa hanokana ny fiainako ho an’ny mpiara-belona amiko.\n\n'
                    ' Hataoko ho vaindohan-draharaha ny hahatonga ny marary tsaboiko ho salama sy finaritra.\n\n'
                    ' Hajaiko ny fahaleovan-tena sy ny hasin’ny Marary tsaboiko.\n\n'
                    ' Hataoko ho toy ny anakandriamaso ny fanajana feno ny ain’olombelona.\n\n'
                    ' Tsy havelako ho sakana tsy hahatontosa ny adidiko amin’ny marary tsaboiko ny taonany, ny aretiny na'
                    ' ny kilemany, ny finoany, ny fiaviany, ny maha-lahy na maha-vavy azy, ny fireneny, ny antoko politika misy'
                    ' azy, ny volon-kodiny, ny firehany amin’ny filana ara-nofo, ny sarangam-piaraha-monina misy azy , na'
                    ' zavatra hafa ankoatra izany\n'
                    ' Hajaiko ny tsiambaratelo naboraka tamiko na aorian’ny fahafatesan’ny marary notsaboiko aza.\n\n'
                    ' Hataoko am-pihainoana ny feon’ny fieritreretana sy amim-pahamendrehana ny asako, araka ny fenitra'
                    ' takin’ny asa fitsaboana'
                    ' Hitozo hanaja sy hanome lanja ny soatoavina nifandovàna teo amin’ny asa fitsaboana aho.\n\n'
                    ' Haneho fanajana sy fankasitrahana izay mendrika ho an’ireo mpampianatra ahy, ireo mpiara-miasa'
                    ' amiko ary ireo mpianatro aho.\n\n'
                    ' Hizara ny fahalalana ananako momba ny fitsaboana amin’ny hafa aho, ho tombontsoan’ny marary sy ho'
                    ' fampivoarana ny fomba fikajiana ny fahasalamana.\n\n'
                    ' Hitandrina ny tenako ho salama tsara sy ho finaritra aho ary hampitombo hatrany ny fahalalako mba'
                    ' hahazoana manome fitsaboana avolenta.\n\n'
                    ' Tsy hampiasaiko hanitsakitsahana ny zo mahaolona sy ny fahalalahan’ny olom-pirenena ny fahaizana'
                    ' ananako amin’ny fitsaboana na dia terena aza aho.\n\n'
                    ' Mianiana am-pahibemaso sy an-kalalahana aho fa hotanterahiko ireo fanomezan-toky ataoko ireo.',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
