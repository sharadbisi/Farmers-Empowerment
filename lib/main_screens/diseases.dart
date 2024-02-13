import 'package:flutter/material.dart';

class DiseasesScreen extends StatelessWidget {
  const DiseasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text('Plant Diseases'),
      backgroundColor: Colors.red[300],
      ),
      body: Center(child: Text('DISEASES SCREEN')),
    );
  }
}