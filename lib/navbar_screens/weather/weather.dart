import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Weather Report'),
        shadowColor: Colors.white,
        backgroundColor: Colors.orange[300],
      ),
      backgroundColor: Colors.lightGreen,
      body: Center(child: Text('WEATHER')),
    );
  }
}
