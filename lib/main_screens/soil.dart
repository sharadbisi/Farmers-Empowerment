import 'package:flutter/material.dart';

class SoilTestingScreen extends StatelessWidget {
  const SoilTestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text('Soil Testing'),
      backgroundColor: Colors.green[300],
      ),
      body: Center(child: Text('SOIL TESTING SCREEN')),
    );
  }
}