import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> tortuga = const {
    'Babe': 'assets/imgs/Tortuga1.jpg',
    'Rafael': 'assets/imgs/Tortuga3.jpg',
    'Miguel Angel': 'assets/imgs/Tortuga4.jpg',
  };

  final Map<String, String> perros = const {
    'Jerry': 'assets/imgs/Jerry.jpeg',
    'Cuahis': 'assets/imgs/Cuachis.jpeg',
    'Cabezón': 'assets/imgs/Cabezón.jpeg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3')),
      body: ListView(
        children: [
          ...tortuga.entries.map((tortuga) {
            return _tileTurtle(
              tortuga.key,
              tortuga.value,
              const Color.fromARGB(255, 37, 90, 64),
              const Color.fromARGB(255, 128, 208, 169),
              const Color.fromARGB(255, 3, 213, 112),
            );
          }),

          Divider(),
          ...perros.entries.map((perro) {
            return _tileDog(
              perro.key,
              perro.value,
              const Color.fromARGB(255, 140, 174, 229),
              const Color.fromARGB(255, 174, 9, 9),
              const Color.fromARGB(255, 91, 17, 11),
            );
          }),
        ],
      ),
    );
  }

  Widget _tileTurtle(
    String turtleName,
    String turtleImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Image.asset(turtleImage, width: 50, height: 50),
      title: Text(turtleName),
      subtitle: Text('Tortuga hermosa'),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );
    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]);
  }

  Widget _tileDog(
    String dogName,
    String dogImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      title: Image.asset(dogImage, width: 50, height: 50),
      leading: Icon(Icons.pets_rounded),
      subtitle: Text(dogName),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );
    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]);
  }
}
