import 'package:flutter/material.dart';
import 'recents.dart';
import 'corbeille.dart';
import 'explore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Another App", home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  final label_1 = TextStyle(color: Colors.deepPurple, fontSize: 24);
  final icone_1 = Icon(
    Icons.menu,
    color: Colors.black,
  );
  final icone_2 = Icon(Icons.arrow_back, color: Colors.black);
  final icone_3 = Icon(Icons.book_online, color: Colors.black);
  final icone_4 = Icon(Icons.bookmark, color: Colors.black);
  final icone_5 = Icon(Icons.gamepad_rounded);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: icone_1),
        ),
        title: Text("Gallery", style: label_1),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(child: Text("First Text")),
          Container(child: Text("Lorem ipsum dolor sit ahmet")),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: IconButton(onPressed: () {}, icon: icone_3),
              title: Text('Récents'),
              onTap: () {
                //ouvrir une nouvelle fenetre
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => recents()),
                );
              },
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: icone_4,
              ),
              title: Text('Explorer'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => explore()),
                );
              },
            ),
            ListTile(
              leading: IconButton(onPressed: () {}, icon: icone_5),
              title: Text('Corbeille'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => corbeille()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
