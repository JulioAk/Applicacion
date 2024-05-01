import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/pages/ListTile.dart';
import 'package:flutter_application_2/src/pages/Cards.dart';
import 'package:flutter_application_2/src/pages/list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home", style: TextStyle(color: Colors.white)
        ) , 
        actions: [
          Icon(
            Icons.search, 
            color: Colors.white, // Cambia el color del icono a blanco
          ),
        ],
        backgroundColor: Color.fromARGB(255, 30, 30, 31),
      ),

      backgroundColor: Color.fromARGB(255, 30, 30, 31),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.list_alt),  iconColor:  Colors.amber,
            title: const Text("List"),  textColor: Colors.white,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ruta1()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.list),  iconColor: Colors.red,
            title: const Text("ListTile"),  textColor: Colors.white,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ruta2()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.widgets), iconColor: Colors.blue,
            title: const Text("Cards Widgets"), textColor: Colors.white,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ruta3()),
              );
            },
          ),
        ],
      ),
    );
  }
}


class Ruta1 extends StatelessWidget {
  const Ruta1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List"),
      ),
      body: ListView(
        children: <Widget> [
          ...getList(),
        ]
      ),
    );
  }
}

class Ruta2 extends StatelessWidget {
  const Ruta2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListTile"),
      ),
      body: ListView(
        children: <Widget>[
          ...getListTiles(),
        ],
      ),
    );
  }
}

class Ruta3 extends StatelessWidget {
  const Ruta3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: ListView(
        children: <Widget>[
          ...getCardList(),
        ],
      ),
    );
  }
}
