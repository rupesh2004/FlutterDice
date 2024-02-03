import 'package:flutter/material.dart';
import 'package:classwork1/diceRoller.dart';
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientColorContainer extends StatelessWidget {
  GradientColorContainer({super.key});


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(202, 246, 136, 0.702),
            Color.fromRGBO(68, 245, 239, 0.702),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child:diceRoll(),
    ),
    );
  }
}
