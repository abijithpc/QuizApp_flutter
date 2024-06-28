import 'package:flutter/material.dart';
import 'package:rolo_quiz/home.dart';

void main() {
  runApp(Rolo());
}

class Rolo extends StatelessWidget {
  const Rolo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
