import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: const Home(),
    theme: ThemeData(
      fontFamily: 'EspressoDolce',
    ),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(0, 48, 135, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCard(nomeGato: "Botinha"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCard(nomeGato: "Linco"),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyCard extends StatelessWidget {
  String nomeGato;
  MyCard({super.key, required this.nomeGato});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
          children: [
            ClipOval(
              child: Image(
                image: AssetImage("assets/$nomeGato.png"),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Text(
                      nomeGato,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                Row(
                  children: [
                    const Icon(
                      Icons.restaurant,
                      size: 30,
                    ),
                    const SizedBox(width: 10), // Espaçamento entre o ícone e o texto
                    Text(
                      '${Random().nextInt(100)}g',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Row(
                children: [
                  Icon(
                    Icons.history,
                    size: 30,
                  ),
                  SizedBox(width: 10), // Espaçamento entre o ícone e o texto
                  Text(
                    "21:26",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ],
            ),
          ],
        ),
      );
  }
}
