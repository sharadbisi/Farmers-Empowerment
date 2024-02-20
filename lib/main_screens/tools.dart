import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
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
      name: "ट्रैक्टर",
      description: "बड़े खेतों की जुताई, जुताई और रोपण के लिए उपयोगी।",
      imageUrl: "images/tools/tractor.jpg",
      videoUrl:
          "https://www.youtube.com/watch?v=SyjJSED0gDw&ab_channel=MarylandFarm%26Harvest",
      detailedDec: " ट्रैक्टर उपयोग खेत पर कई प्रकार के कार्य जैसे जुताई, रोपण, कटाई, और ढुलाई को अन्जाम देने के लिए किया जा सकता हैं। - अधिक हॉर्स पावर इंजन की वजह से यें भारी भार को संभालने में सक्षम होते हैं। - यूटिलिटी ट्रैक्टरों को हल, टिलर, घास काटने की मशीन, लोडर और स्प्रेयर जैसे विभिन्न उपकरणों के साथ आसानी से जोड़ा जा सकता है।",
    ),
    Tool(
      name: "Hand Plow",
      description: "Ideal for small gardens and soft soils.",
      imageUrl: "images/tools/handplow.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec: '',
    ),
    Tool(
      name: "Sprayer",
      description:
          "It is used to spray insecticides, pesticides, herbicides, and fertilizers on farms, as the name implies.",
      imageUrl: "images/tools/Sprayer.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=2Sl8ZPKgwJA&ab_channel=Toolsvilla-TV",
      detailedDec: '',
    ),
    Tool(
      name: "Cultivator",
      description:
          " A plough attached to a tractor is called a cultivator. This reduces labour and saves time.",
      imageUrl: "images/tools/Cultivator.jpg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec: '',
    ),
    Tool(
      name: "Hand Sickle",
      description:
          "A hand sickle is a curved blade with a wooden handle that is used to cut grass, weeds, and hay.",
      imageUrl: "images/tools/Hand_Sickle.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec: '',
    ),
    Tool(
      name: "Hoe",
      description:
          " A hoe is an ancient and versatile agricultural hand tool used to shape the soil, control weeds, clear soil, and harvest root crops.",
      imageUrl: "images/tools/Hoe.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec: '',
    ),
    Tool(
      name: "Shovel",
      description:
          " It is one of the most commonly used agricultural tools among Indian farmers.",
      imageUrl: "images/tools/Shovel.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec: '',
    ),
    Tool(
      name: "Axe",
      description:
          "For all kinds of primary and advanced purposes, the axe is used and employed for agricultural operations.",
      imageUrl: "images/tools/Axe.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec: '',
    ),
    Tool(
      name: "Thresher",
      description:
          "A thresher is a machine used to remove seeds from their surrounding chaff, husks, and straws.",
      imageUrl: "images/tools/Thresher.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'कृषि उपकरण',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey[300],
      ),
      body: ListView.builder(
        itemCount: tools.length,
        itemBuilder: (context, index) {
          final tool = tools[index];
          return ListTile(
            leading: Image.asset(
              tool.imageUrl,
              width: 50,
              height: 50,
            ),
            title: Text(
              tool.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
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
              child: Text(tool.detailedDec),
            ),
            TextButton(
              onPressed: () {
                // tool.videoUrl;
                _openUrl(tool.videoUrl);
              },
              child: const Text("Watch Demo Video"),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openUrl(String videoUrl) async {
    final Uri url = Uri.parse(videoUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
