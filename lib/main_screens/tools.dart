import 'package:flutter/material.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text('Tools'),
      backgroundColor: Colors.blueGrey[300],
      ),
      body: Center(child: Text('TOOLS SCREEN')),
    );
  }
}