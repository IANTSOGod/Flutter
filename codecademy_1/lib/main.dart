import 'package:flutter/material.dart';

void main() {
  runApp(MonApplication());
}

class MonApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Thanks to codecademy",
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myIcon = Icon(
      Icons.waving_hand,
      color: Colors.yellow,
      size: 100.0,
    );
    final myIcon_2 = Icon(
      Icons.menu,
      color: Colors.blueAccent,
      size: 30,
    );
    final redStyle = TextStyle(color: Colors.white, fontSize: 24);

    // Utilisation d'un Builder pour obtenir un contexte approprié
    return Scaffold(
      appBar: AppBar(
        //on utilise un builder avant de placer l'IconButton
        leading: Builder(
          // Utilisation du Builder ici
          builder: (context) => IconButton(
            icon: myIcon_2,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Text(
          "This is my first Flutter application",
          style: redStyle,
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.yellowAccent),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Option 1'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(100),
            child: Text(
              "Thanks for the support",
              style: TextStyle(color: Colors.cyanAccent, fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: myIcon,
          ),
        ],
      ),
    );
  }
}
