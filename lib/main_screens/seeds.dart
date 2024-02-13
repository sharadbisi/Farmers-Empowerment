import 'package:flutter/material.dart';

class SeedsScreen extends StatelessWidget {
  const SeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text('Seeds'),
      backgroundColor: Colors.orangeAccent[300],
      ),
      body: Center(child: Text('SEEDS SCREEN')),
    );
  }
}