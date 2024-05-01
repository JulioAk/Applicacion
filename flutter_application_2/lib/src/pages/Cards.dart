import 'package:flutter/material.dart';

List<Widget> getCardList() {
  return [
    ListTile(
      leading: Icon(Icons.school),
      title: Text('BIENVENIDO'),
      subtitle: Text('APP CERTUS.'),
    ),
    ListTile(
      leading: Icon(Icons.work),  
      title: Text("TRABAJO"),
      subtitle: Text("DEV SOFTWARE"),
    ),
    ListTile(
      leading: Icon(Icons.sunny),
      title: Text("SOL"),
      subtitle: Text("Calor"),
    )
  ];
}
