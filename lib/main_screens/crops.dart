import 'package:flutter/material.dart';

class CropsScreen extends StatelessWidget {
  const CropsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text('Crops'),
      backgroundColor: Colors.green[300],
      ),
      body: Center(child: Text('CROPS SCREEN')),
    );
  }
}