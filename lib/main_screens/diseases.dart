import 'package:flutter/material.dart';

class Disease {
  final String name;
  final String description;
  final String imagePath;
  final String prevention;

  Disease({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.prevention,
  });
}

class DiseasesScreen extends StatelessWidget {
  final List<Disease> diseases = [
    Disease(
      name: 'आलू और टमाटर के पौधों में होने वाली एक बीमारी',//Late Blight
      description:
          'टमाटर और आलू को प्रभावित करता है, जिससे पत्तियों और फलों पर काले धब्बे पड़ जाते हैं।',
      imagePath:
          'https://media.istockphoto.com/id/1287462775/photo/tomato-bush-with-brown-and-yellow-spots-on-foliage-fungal-problem-solanaceae-family-disease.jpg?s=612x612&w=0&k=20&c=3emOKAe3qeZ_Thw2tk9QKXBUvpzTeANx09sOtqIPPeI=',
      prevention: 'प्रतिरोधी किस्मों का प्रयोग करें, फसल चक्र अपनाएँ।',
    ),
    Disease(
      name: 'कोमल फफूंदी',//Downy Mildew
      description:
          'इससे पत्तियों की ऊपरी सतह पर पीले धब्बे और नीचे रोएँदार वृद्धि हो जाती है, जिससे खीरे और पालक जैसी फसलें प्रभावित होती हैं।',
      imagePath: 'https://media.istockphoto.com/id/645093128/photo/mildew-on-plant-leaf.jpg?s=612x612&w=0&k=20&c=S5aEgLdWpI2QyMovG5XfX08rCVY_WTAYqVP1W2iDHmY=',
      prevention:
          'फफूंदनाशकों का उपयोग करें, अच्छा वायु संचार सुनिश्चित करें और प्रतिरोधी किस्मों का उपयोग करें।',
    ),
    Disease(
      name: 'फ्यूजेरियम विल्ट',//Fusarium Wilt
      description:
          'पत्तियों के मुरझाने और पीलेपन का कारण बनता है, जो मुख्य रूप से टमाटर, तरबूज़ और केले को प्रभावित करता है।',
      imagePath: 'https://cdn.pixabay.com/photo/2019/08/09/17/44/sunflower-4395504_640.jpg',
      prevention: 'रोगमुक्त बीज, फसल चक्र और मृदा धूम्रीकरण का प्रयोग करें।',
    ),
    Disease(
      name: 'वर्टिसिलियम विल्ट',//Verticillium Wilt
      description:
          'इससे पत्तियाँ पीली पड़ जाती हैं और पौधे मर जाते हैं, जिससे बैंगन, टमाटर और आलू प्रभावित होते हैं।',
      imagePath: 'https://media.istockphoto.com/id/1290967510/photo/sick-cherry-tomatoes-affected-by-disease-vertex-rot.jpg?s=612x612&w=0&k=20&c=s-BLF7NOj4Z4g6kPd49vW7lpdVymjoPD-taLlBPFweE=',
      prevention: 'प्रतिरोधी किस्मों का उपयोग करें और मिट्टी का अच्छा स्वास्थ्य सुनिश्चित करें।',
    ),
    Disease(
      name: 'बैक्टीरियल विल्ट',//Bacterial Wilt
      description:
          'पौधों के तेजी से मुरझाने और मरने का कारण बनता है, खीरे, टमाटर और मिर्च को प्रभावित करता है।',
      imagePath: 'https://media.istockphoto.com/id/637185622/photo/sweet-pepper-disease-viral.jpg?s=612x612&w=0&k=20&c=c56p-D3YL3djPO5sVXdUEYic9mKj5-R3-fdLN0N5Apc=',
      prevention:
          'प्रतिरोधी किस्मों का उपयोग करें, कीट वाहकों को नियंत्रित करें और जल जमाव वाली मिट्टी से बचें।',
    ),
    Disease(
      name: 'रूट नॉट नेमाटोड',//Root Knot Nematode
      description:
          'जड़ों पर गॉल्स बनाता है, जिससे विकास रुक जाता है और उपज कम हो जाती है, जिससे गाजर, टमाटर और खीरे प्रभावित होते हैं।',
      imagePath: 'https://media.istockphoto.com/id/1369623404/photo/nodules-of-lupine-roots-atmospheric-nitrogen-fixing-bacteria-live-inside.jpg?s=612x612&w=0&k=20&c=3BOAZRleTwhkW9ojf8nIf80wOLzBY3_dOirmCEzb8-w=',
      prevention:
          'नेमाटीसाइड्स का उपयोग करें, मिट्टी का सौरीकरण करें और गैर-मेज़बान पौधों के साथ फसल चक्र का अभ्यास करें।',
    ),
    Disease(
      name: 'पत्ती कर्ल',//Leaf Curl
      description:
          'इससे पत्तियाँ मुड़ जाती हैं और मोटी हो जाती हैं, जिससे टमाटर और मिर्च प्रभावित होते हैं।',
      imagePath: 'https://media.istockphoto.com/id/1394704822/photo/peach-fruit-tree-with-leaf-curl-diseases-closeup.jpg?s=612x612&w=0&k=20&c=y2pSC91giQErqO0mUr5DaxWcHQnA5JIKISUJdPqEZJ8=',
      prevention:
          'वायरस-मुक्त बीजों का उपयोग करें, कीट वाहकों को नियंत्रित करें और प्रभावित पौधों को हटा दें।',
    ),
    Disease(
      name: 'एन्थ्रेक्नोज',//Anthracnose
      description:
          'इसके परिणामस्वरूप फलों, पत्तियों और तनों पर काले, धँसे हुए घाव हो जाते हैं, जिससे खीरे, फलियाँ और टमाटर प्रभावित होते हैं।',
      imagePath: 'https://media.istockphoto.com/id/844341616/photo/anthracnose-in-papaya-fruit.jpg?s=612x612&w=0&k=20&c=BDEPc7v_MB4UYHgmfZTJ1Fn1GZ6BXD_tJ0-5RYcEoe8=',
      prevention:
          'प्रतिरोधी किस्मों का उपयोग करें, फफूंदनाशकों का प्रयोग करें और ऊपरी पानी देने से बचें।',
    ),
    Disease(
      name: 'डैंपिंगऑफ',//Damping Off
      description:
          'पौधे गिर जाते हैं और मर जाते हैं, जिससे नम स्थितियों में अधिकांश सब्जियों के पौधे प्रभावित होते हैं।',
      imagePath: 'https://media.istockphoto.com/id/1729128474/photo/collecting-healing-horsetail-herbs-hand-picking-off-medicinal-herbs-equisetum-arvense-for.jpg?s=612x612&w=0&k=20&c=GZ400TlbbBFjLbSJKT88yOALOn6ZfOYXldiQfG2SI8o=',
      prevention:
          'Use sterile soil for seed starting, avoid overwatering, and ensure good air circulation.',
    ),
    Disease(
      name: 'अगेती झुलसा',//Early Blight
      description:
          'Causes dark spots with concentric rings on leaves and stems, affecting potatoes and tomatoes.',
      imagePath: 'https://media.istockphoto.com/id/1201672222/photo/potatoes-eaten-by-pests.jpg?s=612x612&w=0&k=20&c=0nWzq-pl9_5UbCrfEbJNlhkUuDS5idfoc_6jN6jeT1w=',
      prevention:
          'Practice crop rotation, use fungicides, and avoid overhead watering.',
    ),
    Disease(
      name: 'ककड़ी मोज़ेक वायरस',//Cucumber Mosaic Virus
      description:
          'Leads to mottled leaves and stunted growth, affecting cucumbers, tomatoes, and peppers.',
      imagePath: 'https://media.istockphoto.com/id/1528440929/photo/cucumber-leaves-affected-by-the-cucumber-mosaic-virus-prevention-and-treatment-of-vegetable.jpg?s=612x612&w=0&k=20&c=zvtjsT-9E9Mens-JJ-N3NxMIW7U_hnvUUSFtyzdEQd8=',
      prevention:
          'Control weed and insect vectors, use virus-free seeds, and remove infected plants.',
    ),
    Disease(
      name: 'क्लबरूट',//Clubroot
      description:
          'Causes swelling and distortion of roots, affecting cabbage, cauliflower, and broccoli.',
      imagePath: 'https://media.istockphoto.com/id/1341815016/photo/a-large-head-of-cabbage-in-the-garden-bed-eaten-away-and-damaged-by-caterpillars.jpg?s=612x612&w=0&k=20&c=rBoq7YUI5BBxhphjaWsBbPsB-mh9yrRxnx_SFYb3vEI=',
      prevention:
          'Adjust soil pH to above 7.2, use resistant varieties, and practice crop rotation.',
    ),
    Disease(
      name: 'काला सड़न',//Black Rot
      description:
          'Leads to blackening of veins and yellowing of leaves, affecting cabbage and cauliflower.',
      imagePath: 'https://media.istockphoto.com/id/1222490341/photo/rotting-head-of-orange-cauliflower-spots-of-black-mold-mildew.jpg?s=612x612&w=0&k=20&c=E6sAAg47Ds0g6gUQKYy8mmQRFRozax93Jvp8uB21sy0=',
      prevention:
          'Use certified seeds, remove crop debris, and practice crop rotation.',
    ),
    Disease(
      name: 'सफेद जंग',//White Rust
      description:
          'Causes white pustules on leaves, affecting mustard and other leafy vegetables.',
      imagePath: 'https://media.istockphoto.com/id/1629003302/photo/close-up-of-green-curly-kale-plant-in-a-vegetable-garden.jpg?s=612x612&w=0&k=20&c=l4_ClYEDttQqSU3m5xbEHRS2CM47ACOWvY7baRJrQ8s=',
      prevention:
          'Use resistant varieties, apply appropriate fungicides, and avoid overcrowding.',
    ),
    Disease(
      name: 'मटर की ख़स्ता फफूंदी',//Powdery Mildew of Peas
      description: 'Forms white powdery deposits on pea leaves and stems.',
      imagePath: 'https://media.istockphoto.com/id/1333348635/photo/fungal-plant-disease-powdery-mildew-on-peas-white-powdery-plaque-and-spots-appear-on-leaves.jpg?s=612x612&w=0&k=20&c=JtQPyJWD_rd0J8WBcn91tevpVxN2HiAY6Q0UKOomguw=',
      prevention:
          'Use resistant varieties, ensure good air circulation, and apply sulfur-based fungicides.',
    ),
    Disease(
      name: 'गाजर मक्खी',//Carrot Fly
      description: 'Larvae feed on carrot roots, causing them to rot.',
      imagePath: 'https://media.istockphoto.com/id/1355875797/photo/carrot-root-damaged-by-a-caterpillar-of-moths-of-the-owlet-moth-family-noctuidae-they-are.jpg?s=612x612&w=0&k=20&c=00fPzJCIEF8lkG3wf2iE5IVpvUcw3KtOGb89HPeChmw=',
      prevention:
          'Use protective netting, rotate crops, and remove affected plants.',
    ),
    Disease(
      name: 'लहसुन का जंग',//Garlic Rust
      description:
          'Leads to rust-colored spots on garlic leaves, affecting yield.',
      imagePath: 'https://media.istockphoto.com/id/1399955280/photo/onion-rust-symptoms-of-fungal-disease-of-onion-in-form-of-yellow-spots-on-leaf.jpg?s=612x612&w=0&k=20&c=xXq0ltgblDnxA2kNafhVSnIyfrMe_cANqWSW7pYmMUY=',
      prevention:
          'Plant early to avoid high humidity, use fungicides, and ensure good air circulation.',
    ),
    Disease(
      name: 'टमाटर की पीली पत्ती का कर्ल',//Tomato Yellow Leaf Curl
      description:
          'Causes yellowing and curling of leaves, affecting tomato yield and quality.',
      imagePath: 'https://media.istockphoto.com/id/1424623608/photo/organic-tomato-cultivation-in-the-countryside-organic-food-agriculture-poland.jpg?s=612x612&w=0&k=20&c=ZICqdHrA76JPXLWVE2zvgo0GH8Jay1M92HmEVfBG48U=',
      prevention:
          'Control insect vectors, use virus-free seeds, and practice good weed management.',
    ),
    Disease(
      name: 'पाउडर रूपी फफूंद',//Powdery Mildew
      description: 'Forms white powdery spots on leaves, affects many plants.',
      imagePath:
          'https://media.istockphoto.com/id/892929920/photo/powdery-mildew-on-roses-shoot-macro-close-up.jpg?s=612x612&w=0&k=20&c=pp9PONEyXSVRq8GQxrGf_6Y_-t_PF524UczIsR1A7lE=',
      prevention: 'Ensure good air circulation, apply sulfur-based fungicides.',
    ),
    Disease(
      name: 'प्याज की बदबू',//Onion Smut
      description: 'Causes black spots on leaves and bulbs, affecting onions.',
      imagePath: 'https://media.istockphoto.com/id/1152888973/photo/huitlacoche-corn-smut-fungus-mexican-truffle.jpg?s=612x612&w=0&k=20&c=RyK79PFlmN4p_enWH_L6x0rs1r8w9VBgYdNulsqCn5U=',
      prevention:
          'Use certified seeds, practice crop rotation, and apply appropriate fungicides.',
    ),
  ];

  DiseasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[200],
        title: const Text(
          'पौधों के रोग',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: diseases.length,
        itemBuilder: (context, index) {
          final disease = diseases[index];
          return Card(
            child: ListTile(
              leading: Image.network(disease.imagePath),
              title: Text(disease.name,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              subtitle: Text(disease.description),
              isThreeLine: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DiseaseDetailPage(disease: disease),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

///DETAIL OF DISEASES SCREEN
class DiseaseDetailPage extends StatelessWidget {
  final Disease disease;

  const DiseaseDetailPage({super.key, required this.disease});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(disease.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(disease.imagePath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                disease.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                disease.description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "रोकथाम : ${disease.prevention}",
                style:
                    const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
