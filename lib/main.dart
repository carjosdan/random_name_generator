import 'package:flutter/material.dart';
import 'screens/random_name_generator_page.dart';

void main() {
  runApp(const RandomNameGenerator());
}

class RandomNameGenerator extends StatelessWidget {
  const RandomNameGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Name Generator',
      theme: ThemeData(
        fontFamily: 'Lexend',
      ),
      home: const RandomNameGeneratorPage(),
    );
  }
}