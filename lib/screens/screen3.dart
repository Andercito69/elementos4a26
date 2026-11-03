import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final dogs = const ['Jerry', 'Cabezón', 'Cuachis'];

  final turtle = const ['Babe', 'Rafael', 'Miguel Angel'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3')),
      body: ListView(
        children: [
          ...dogs.map(
            (dog) => ListTile(
              leading: Icon(Icons.pets_rounded),
              title: Text(dog),
              subtitle: Text('Perro jugueton'),
              trailing: Icon(Icons.arrow_forward),
              tileColor: Colors.brown,
              iconColor: const Color.fromARGB(255, 57, 40, 34),
              textColor: Colors.black,
            ),
          ),
          Divider(),
          ...turtle.map(
            (turtle) => ListTile(
              leading: Icon(Icons.pets_rounded),
              title: Text(turtle),
              subtitle: Text('Tortuga hermosa'),
              trailing: Icon(Icons.arrow_forward),
              tileColor: Colors.green,
              iconColor: const Color.fromARGB(255, 32, 69, 34),
              textColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
