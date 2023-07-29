import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(5) + 1;
      rightDiceNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(246, 249, 97, 102),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(246, 249, 97, 102),
          title: const Center(
            child: Text(
              'Vegas Dice Rush',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: rollDice,
                    child: Image.asset('assets/images/dice$leftDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: rollDice,
                    child:
                        Image.asset('assets/images/dice$rightDiceNumber.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
