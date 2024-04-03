import 'package:flutter/material.dart';
import 'main.dart';
import 'adminProfil.dart';

void main() {
  runApp(Profil());
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is the profil frame",
      home: HomeProfil(),
    );
  }
}

class HomeProfil extends StatefulWidget {
  @override
  _HomeProfilState createState() => _HomeProfilState();
}

class _HomeProfilState extends State<HomeProfil> {
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
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Mon profil"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 50),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  width: 200,
                  height: 200,
                  margin: const EdgeInsets.only(left: 10, right: 20),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/umaru.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Flexible(
                  child: Text(
                "Iantso Christian RAZAFINDRAZAKA",
                style: TextStyle(color: Colors.red, fontSize: 24),
              ))
            ],
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.baby_changing_station_outlined)),
                  const Flexible(child: Text("Né(e) à ")),
                  const Flexible(child: Text("study value "))
                ]),
                Row(children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
                  const Flexible(child: Text("Habite à ")),
                  const Flexible(child: Text("Live value "))
                ]),
                Row(children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.work_history)),
                  const Flexible(child: Text("Travaille à ")),
                  const Flexible(child: Text("work value"))
                ]),
                Row(children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.school)),
                  const Flexible(child: Text("A etudié à ")),
                  const Flexible(
                    child: Text("study value"),
                  )
                ]),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Admin()),
                    );
                  },
                  child: Row(children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Admin()),
                          );
                        },
                        icon: const Icon(Icons.devices_other)),
                    const Flexible(
                        child: Text("Plus d'informations sur vous ")),
                  ]),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Action du bouton "Amis"
            },
            child: const Text(
              "Amis",
              style: TextStyle(color: Colors.purple),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 50),
            height: 150.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 150.0,
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text("Item $index"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
