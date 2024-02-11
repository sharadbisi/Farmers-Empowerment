import 'package:flutter/material.dart';

class MyNews extends StatelessWidget {
  final String child;
  const MyNews({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 400,
        width: 350,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(
            width: 5,
            color: const Color.fromARGB(255, 64, 255, 105),
          ),
        ),
        child: ClipRRect(
          child: Image.asset(
            child,
            fit: BoxFit.cover, // Cover the entire space of the container
          ),
        ),
      ),
    );
  }
}
