import 'package:flutter/material.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text('Blogs'),
      backgroundColor: Colors.amber[300],
      ),
      body: Center(child: Text('BLOGS SCREEN')),
    );
  }
}