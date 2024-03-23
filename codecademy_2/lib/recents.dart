import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(recents());
}

class recents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Récents", home: rHomePage());
  }
}

class rHomePage extends StatelessWidget {
  final label1 = TextStyle(color: Colors.deepPurple, fontSize: 24);
  final selfLabel = Icon(Icons.book_online, color: Colors.black);
  final selfLabel2 = Icon(Icons.arrow_back, color: Colors.black);
  final menu_icon = Icon(Icons.phone_android, color: Colors.black);
  final menu_icon1 = Icon(Icons.output_outlined, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recents", style: label1),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              // Wrap the first IconButton in a Flexible
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                icon: selfLabel2,
              ),
            ),
            Flexible(
              // Wrap the second IconButton in a Flexible
              child: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: selfLabel),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Text(
              'Récents',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: menu_icon1,
            ),
            title: Text("Output"),
            onTap: () {},
          ),
          ListTile(
            leading: IconButton(onPressed: () {}, icon: menu_icon),
            title: Text("Memoire du télephone"),
            onTap: () {},
          )
        ],
      )),
      body: Center(
        child: Text("Here is the content"),
      ),
    );
  }
}
