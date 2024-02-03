import 'dart:math';

import 'package:flutter/material.dart';

class diceRoll extends StatefulWidget {
  const diceRoll({super.key});
  @override
  State<diceRoll> createState() {
    return _diceRollState();
  }
}

class _diceRollState extends State<diceRoll> {
  var activeDiceImage = "assets/images/dice-2.png";
  var currentDiceNumber = 2;

  void rollDice() {
    setState(() {
      currentDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceNumber.png",
          width: 200,
        ),
        const SizedBox(height: 40),
        ElevatedButton(
            onPressed: rollDice,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 0, 255, 242),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
              ),
            ),
            child: const Text(
              'Roll Dice',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ))
      ],
    );
  }
}
