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
      description: 'डेयरी फार्मिंग का अर्थ है दूध और दूध से बने उत्पादों के उत्पादन के लिए पशुओं का पालन और प्रबंधन करना।',
      imageUrl: 'images/animals/cow.jpg',
      videoUrl:
          'https://www.youtube.com/watch?v=WhTb5CHflDo&ab_channel=omprakashausar',
      details:
          'डेयरी फार्मिंग एक कृषि तकनीक है जो दूध के दीर्घकालिक उत्पादन से संबंधित है, जिसे बाद में दही, पनीर, दही, मक्खन, क्रीम आदि जैसे डेयरी उत्पाद प्राप्त करने के लिए संसाधित किया जाता है। इसमें गाय, भैंस जैसे डेयरी पशुओं का प्रबंधन शामिल है। भेड़, बकरी, आदि'
          'पशुओं की बीमारियों से बचाव के लिए देखभाल की जाती है और पशु चिकित्सकों द्वारा नियमित रूप से उनका निरीक्षण किया जाता है। एक स्वस्थ पशु शारीरिक, मानसिक और सामाजिक रूप से स्वस्थ होता है।'
          'इन जानवरों का दूध हाथ से या मशीनों से निकाला जाता है। दूध को संरक्षित किया जाता है और औद्योगिक रूप से डेयरी उत्पादों में परिवर्तित किया जाता है, जिसका उपयोग व्यावसायिक उद्देश्यों के लिए किया जाता है।',
    ),
    Animal(
      name: 'मछली पालन',
      description: 'मछली पालन व्यावसायिक उद्देश्यों के लिए नियंत्रित वातावरण में मछली पालने की प्रथा है।',
      imageUrl: 'images/animals/fish.jpeg',
      videoUrl: 'https://youtu.be/z9eoGlOq33o?si=tmT_C8BpB5IxkJCW',
      details:
          'मछली पालन व्यावसायिक उद्देश्यों के लिए बंद टैंकों या तालाबों में मछली पालने की प्रक्रिया है। मछली और मछली प्रोटीन की मांग बढ़ रही है। सैल्मन, कैटफ़िश, कॉड और तिलापिया जैसी मछली की प्रजातियाँ मछली फार्मों में पाली जाती हैं।'
          'मछली पालन या मछलीपालन दो प्रकार का होता है:'
          ' 1.स्थानीय प्रकाश संश्लेषक उत्पादन पर आधारित व्यापक जलीय कृषि'
          ' 2.गहन जलकृषि, मछलियों को दी जाने वाली बाहरी खाद्य आपूर्ति पर आधारित।',
    ),
    Animal(
      name: 'मुर्गी पालन',
      description: 'पोल्ट्री फार्मिंग का अर्थ है व्यावसायिक उद्देश्यों के लिए मुर्गियों और अन्य पक्षियों का पालन-पोषण करना।',
      imageUrl: 'images/animals/hen.jpg',
      videoUrl: 'https://youtu.be/2MMR9WQpqkw?si=LC_Fz55YdusZJAGv',
      details:
          "मुर्गी पालन का संबंध व्यावसायिक उद्देश्यों के लिए पक्षियों को पालने और प्रजनन से है। बत्तख, मुर्गियां, हंस, कबूतर, टर्की आदि पक्षियों को अंडे और मांस के लिए पालतू बनाया जाता है।"
          'जानवरों से स्वस्थ भोजन प्राप्त करने के लिए उनकी देखभाल करना और उन्हें रोग मुक्त वातावरण में रखना बहुत महत्वपूर्ण है। अंडे और मांस प्रोटीन का एक समृद्ध स्रोत हैं।'
          'स्वच्छता और स्वच्छता की स्थिति बनाए रखने की आवश्यकता है। पक्षियों के मल का उपयोग मिट्टी की उर्वरता बढ़ाने के लिए खाद के रूप में किया जाता है। मुर्गी पालन से बड़ी संख्या में लोगों को रोजगार मिलता है और किसानों की अर्थव्यवस्था सुधारने में मदद मिलती है।',
    ),
    Animal(
      name: 'मधुमक्खी पालन',
      description: 'मधुमक्खी पालन का अर्थ है मधुमक्खियों को नियंत्रित परिस्थितियों में पालना और उनसे शहद और अन्य उत्पाद प्राप्त करना।',
      imageUrl: 'images/animals/bee.jpg',
      videoUrl: 'https://youtu.be/nmyy246KwX0?si=-L30TMEuTZWmXL7p',
      details:
          "मधुमक्खी पालन या मधुमक्खी पालन मानव निर्मित छत्ते में मनुष्यों द्वारा मधुमक्खी कालोनियों को बनाए रखने की प्रथा है। शहद की मक्खियों का पालन बड़े पैमाने पर किया जाता है। मधुमक्खियों को शहद, मोम और फूलों के परागण के लिए पाला जाता है। इनका उपयोग अन्य मधुमक्खी पालकों द्वारा भी समान उद्देश्यों के लिए किया जाता है। वह स्थान जहाँ मधुमक्खियों को रखा जाता है, मधुमक्खियाँ पालने का स्थान या मधुमक्खी बाड़ा कहलाता है।",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'पशुपालन',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[300],
      ),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (context, index) {
          final animal = animals[index];
          return ListTile(
            leading: Image.asset(
              animal.imageUrl,
              width: 100,
              height: 100,
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
        },
      ),
    );
  }
}

///THIS CLASS IS FOR INITIALIZING THE VARIABLES
class Animal {
  final String name;
  final String description;
  final String imageUrl;
  final String videoUrl;
  final String details;

  Animal({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.videoUrl,
    required this.details,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(animal.details),
            ),
            TextButton(
              onPressed: () {
                // animal.videoUrl;
                _openUrl(animal.videoUrl);
              },
              child: const Text("डेमो वीडियो देखें"),
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
