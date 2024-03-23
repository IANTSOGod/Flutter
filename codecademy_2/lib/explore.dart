import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(explore());
}

class explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Explorer",
      home: exploreHome(),
    );
  }
}

class exploreHome extends StatelessWidget {
  final label1 = TextStyle(color: Colors.deepPurple, fontSize: 24);
  final selfLabel = Icon(Icons.menu, color: Colors.black);
  final selfLabel2 = Icon(Icons.arrow_back, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explorer", style: label1),
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
              'Explorer',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: Text("Option_1"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Option_2"),
            onTap: () {},
          )
        ],
      )),
      body: Center(child: Text("Here is the content")),
    );
  }
}
