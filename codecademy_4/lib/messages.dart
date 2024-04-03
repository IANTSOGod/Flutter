import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(Messages());
}

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Titre", home: Homemess());
  }
}

class Homemess extends StatefulWidget {
  @override
  RHomemess createState() => RHomemess();
}

class RHomemess extends State<Homemess> {
  List<Icon> icones = [
    Icon(Icons.plus_one),
    Icon(Icons.image),
    Icon(Icons.video_call),
    Icon(Icons.emoji_emotions),
    Icon(Icons.send)
  ];

  List<String> titres = ["Plus", "Images", "Appel", "Emoji", "Envoyer"];
  int _selectedindex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => App()),
              );
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Messages"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call))
        ],
      ),
      body: Container(
          alignment: Alignment.bottomRight,
          child: Text("Display the container like this")),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: [
          for (int i = 0; i < titres.length; i++)
            BottomNavigationBarItem(
                icon: icones[i],
                label: titres[i],
                backgroundColor: Colors.black),
        ],
        fixedColor: Colors.white,
        onTap: (value) {},
        currentIndex: _selectedindex,
      ),
    );
  }
}
