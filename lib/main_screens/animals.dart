import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimalScreen extends StatefulWidget {
  const AnimalScreen({super.key});

  @override
  State<AnimalScreen> createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
  final List<Animal> animals = [
    Animal(
        name: 'गाय पालन',
        description: 'description',
        imageUrl: 'images/animals/cow.jpg',
        videoUrl: 'videoUrl')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Animal Husbandry'),
          backgroundColor: Colors.green[300],
        ),
        body: ListView.builder(
            itemCount: animals.length,
            itemBuilder: (context, index) {
              final animal = animals[index];
              return ListTile(
                leading: Image.asset(
                  animal.imageUrl,
                  width: 80,
                  height: 80,
                ),
                title: Text(
                  animal.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(animal.description),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimalDetailPage(animal: animal),
                    ),
                  );
                },
              );
            }));
  }
}

///THIS CLASS IS FOR INITIALIZING THE VARIABLES
class Animal {
  final String name;
  final String description;
  final String imageUrl;
  final String videoUrl;

  Animal({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.videoUrl,
  });
}

///ANIMAL DETAILS PAGE
class AnimalDetailPage extends StatelessWidget {
  final Animal animal;
  const AnimalDetailPage({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(animal.imageUrl),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Cattle farming involves the rearing and management of two types of animals- one group for food requirements like milk and another for labour purposes like ploughing, irrigation, etc.   Animals which provide milk are called milch/dairy animals. For example, goats, buffalo, cows, etc. Animals which are used for labour are called draught animals.'
                  'Since dairy animals are cared for and bred for milk, we need to improve milk production to meet the requirements. The period after the birth of a calf, when a cow starts to produce milk, is called the lactation period. We can enhance milk production by increasing this lactation period. But along with milk production, quality must also meet. Dairy farm management is the management of the milch animals with the goal of enhancing the quantity and quality of the milk produced. For this reason, high-yielding and disease-resistant breeds are developed.'),
            ),
            TextButton(
              onPressed: () {
                // animal.videoUrl;
                _openUrl(animal.videoUrl);
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
