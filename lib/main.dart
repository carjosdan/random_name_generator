import 'package:flutter/material.dart';
import '../styles/app_styles.dart';
import 'widgets/people_list.dart';
void main() {
  runApp(const RandomNameGenerator());
}

class RandomNameGenerator extends StatelessWidget {
  const RandomNameGenerator({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Generador de nombres aleatorios',
      theme: AppStyles.myTheme,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppStyles.primary,
          foregroundColor: AppStyles.secondary,
          title: const Text('Generador de nombres aleatorios'),
        ),
        body: PeopleList(),
      ),
    );
  }
}