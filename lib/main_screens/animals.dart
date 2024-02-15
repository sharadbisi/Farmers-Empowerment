import 'package:flutter/material.dart';

class AnimalScreen extends StatelessWidget {
  const AnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text('Animal Husbandry'),
      backgroundColor: Colors.green[300],
      ),
      body: Center(child: Text('ANIMAL HUSBANDRY SCREEN')),
    );
  }
}