import 'package:flutter/material.dart';

class MyChatBot extends StatefulWidget {
  const MyChatBot({super.key});

  @override
  State<MyChatBot> createState() => _MyChatBotState();
}

class _MyChatBotState extends State<MyChatBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: const Text('Chat Bot'),
      backgroundColor: Colors.yellowAccent,
      ),
      body: const Center(child:  Text('My Chat Bot is implemented here')),
    );
  }
}