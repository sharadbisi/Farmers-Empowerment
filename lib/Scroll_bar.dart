import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String child;
  const Square({required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border.all(
                color: Color.fromARGB(255, 82, 112, 74),
                width: 5,
              ),
              shape: BoxShape.rectangle,
            ),

            // color: Colors.blue,
            child: Center(child: Text(child)),
          ),
        ),
      ],
    );
  }
}
