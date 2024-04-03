import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(Amis());
}

class Amis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is the friend's segment",
      home: HomeAmis(),
    );
  }
}

class HomeAmis extends StatefulWidget {
  RHomeAmis createState() => RHomeAmis();
}

class RHomeAmis extends State<HomeAmis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => App()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Amis"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(bottom: 50),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Ajoutez des amis",
                            style: TextStyle(color: Colors.purpleAccent)))),
                Flexible(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Vos amis",
                        style: TextStyle(color: Colors.purpleAccent),
                      )),
                )
              ],
            ),
            Text("Add the other content here")
          ],
        ),
      ),
    );
  }
}
