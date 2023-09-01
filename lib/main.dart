import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromRGBO(64, 196, 254, 1),
      appBar: AppBar(
        title: const Text('Dados'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var randomNumber = Random();
  var ball = 1;

  void rollDice() {
    ball = randomNumber.nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                rollDice();
              });
            },
            child: Image.asset('images/ball$ball.png'),
          ),
        )
      ],
    );
  }
}
