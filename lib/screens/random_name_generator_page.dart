import 'package:flutter/material.dart';

class RandomNameGeneratorPage extends StatelessWidget {
  const RandomNameGeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Name Generator'),
      ),
      body: const Center(
        child: Text('Generate a random name!'),
      ),
    );
  }
}