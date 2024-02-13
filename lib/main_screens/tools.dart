import 'package:flutter/material.dart';

import 'tool.dart';

class ToolsScreen extends StatefulWidget {
  const ToolsScreen({super.key});

  @override
  State<ToolsScreen> createState() => _ToolsScreenState();
}

class _ToolsScreenState extends State<ToolsScreen> {

  //defining list of tools
  final List<Tool> tools = [
  Tool(
    name: "Tractor",
    description: "Useful for plowing, tilling, and planting large fields.",
    imageUrl: "images/tractor.jpg",
    videoUrl: "https://www.youtube.com/shorts/mZnSH4pY6PQ",
  ),
  Tool(
    name: "Hand Plow",
    description: "Ideal for small gardens and soft soils.",
    imageUrl: "images/handplow.jpeg",
    videoUrl: "https://www.youtube.com/shorts/mZnSH4pY6PQ",
  ),
  // Add more tools as needed
];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text('Tools'),
      backgroundColor: Colors.blueGrey[300],
      ),
           body: ListView.builder(
        itemCount: tools.length,
        itemBuilder: (context, index) {
          final tool = tools[index];
          return ListTile(
            leading: Image.asset(tool.imageUrl, width: 50, height: 50), // Make sure to add actual image assets
            title: Text(tool.name),
            subtitle: Text(tool.description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ToolDetailPage(tool: tool),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ToolDetailPage extends StatelessWidget {
  final Tool tool;

  const ToolDetailPage({super.key, required this.tool});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tool.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(tool.imageUrl),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(tool.description),
            ),
            // This is a placeholder for the video or a link to it
            // In a real app, you might use a package like `flutter_youtube` or `webview_flutter` to embed the video
            TextButton(
              onPressed: () {/* Open video URL */tool.videoUrl;},
              child: Text("Watch Demo Video"),
            ),
          ],
        ),
      ),
    );
  }
}