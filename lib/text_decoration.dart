import 'package:flutter/material.dart';

class textColorEdit extends StatelessWidget {
  const textColorEdit({super.key});
  @override
  Widget build(context) {
    return const Text(
      "Hello",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 28,
          fontWeight: FontWeight.bold),
    );
  }
}
