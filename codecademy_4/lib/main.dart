import 'dart:io';

import 'package:flutter/material.dart';
import 'notifications.dart';
import 'profil.dart';
import 'messages.dart';
import 'amis.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Mon application flutter", home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<Home> {
  final List<String> textes = ['Acceuil', 'recherche', "Amis"];
  final List<Icon> icones = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.person_2_outlined)
  ];
  int _selectedindex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
    if (_selectedindex == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => App()));
    } else if (_selectedindex == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Amis()));
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            leading: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  // Wrap the first IconButton in a Flexible
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => App()),
                      );
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                )
              ],
            ),
            title: Text(textes[_selectedindex]),
            centerTitle: true,
            backgroundColor: Colors.greenAccent,
          ),
          body: Center(child: Text('Contenu de ${textes[_selectedindex]}')),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              for (int i = 0; i < textes.length; i++)
                BottomNavigationBarItem(
                  icon: icones[i],
                  label: textes[i],
                )
            ],
            backgroundColor: Colors.greenAccent,
            currentIndex: _selectedindex,
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
          ),
        );
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Flexible(
              child: IconButton(
                  onPressed: () {
                    exit(0);
                  },
                  icon: const Icon(Icons.exit_to_app))),
          Flexible(
            child: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            ),
          )
        ]),
        title: const Text("Facebook",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        actions: [
          Flexible(
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => notifications()));
                  },
                  icon: Icon(Icons.notifications))),
          Flexible(
              child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profil()));
            },
            child: Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/umaru.jpg", // Chemin de l'asset de l'image
                  fit: BoxFit.cover, // Pour ajuster l'image dans le cercle
                ),
              ),
            ),
          )),
          Flexible(
              child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: const Text("Iantso")))
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.greenAccent),
            child: Text(
              'Messenger',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Messages()),
                );
              },
              icon: const Icon(Icons.message),
            ),
            title: const Text("Messages"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Messages()),
              );
            },
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Amis()),
                  );
                },
                icon: const Icon(Icons.person_2_outlined)),
            title: const Text("Vos amis"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Amis()),
              );
            },
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => notifications()),
                  );
                },
                icon: const Icon(Icons.notifications)),
            title: const Text("Notifications"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => notifications()),
              );
            },
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profil()),
                  );
                },
                icon: const Icon(Icons.person)),
            title: const Text("Mon profil"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profil()),
              );
            },
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
            title: const Text("Se déconnecter"),
            onTap: () {},
          )
        ],
      )),
      body: Center(
        child: ListView(
          children: [Center(child: Text("Add the content here"))],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          for (int i = 0; i < textes.length; i++)
            BottomNavigationBarItem(icon: icones[i], label: textes[i]),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedindex,
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
