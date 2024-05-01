import 'package:flutter/material.dart';

List<Widget> getListTiles() {
  return [
    ListTile(
      title: Text('ListTile con color rojo'),
      tileColor: Colors.red,
    ),
    ListTile(
      title: Text('ListTile con color azul'),
      tileColor: Colors.blue,
    ),
    ListTile(
      title: Text('ListTile con color verde'),
      tileColor: Colors.green,
    ),
  ];
}
