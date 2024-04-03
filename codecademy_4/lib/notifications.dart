import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(notifications());
}

class notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is the notifications frame",
      home: Homenotif(),
    );
  }
}

class Homenotif extends StatefulWidget {
  @override
  HomePageNotif createState() => HomePageNotif();
}

class HomePageNotif extends State<Homenotif> {
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
        title: Text("Notifications"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: ListView(
          padding: EdgeInsets.all(20),
          children: [for (int i = 0; i < 10; i++) notif()]),
    );
  }
}

class notif extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.warning, color: Colors.yellow)),
            Text("Danger")
          ],
        ));
  }
}
