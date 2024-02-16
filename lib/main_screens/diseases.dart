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
      name: 'Late Blight',
      description:
          'Affects tomatoes and potatoes, causing dark spots on leaves and fruits.',
      imagePath:
          'https://media.istockphoto.com/id/1287462775/photo/tomato-bush-with-brown-and-yellow-spots-on-foliage-fungal-problem-solanaceae-family-disease.jpg?s=612x612&w=0&k=20&c=3emOKAe3qeZ_Thw2tk9QKXBUvpzTeANx09sOtqIPPeI=',
      prevention: 'Use resistant varieties, practice crop rotation.',
    ),
    Disease(
      name: 'Downy Mildew',
      description:
          'Leads to yellow spots on upper leaf surfaces and fluffy growths underneath, affecting crops like cucumbers and spinach.',
      imagePath: 'https://media.istockphoto.com/id/645093128/photo/mildew-on-plant-leaf.jpg?s=612x612&w=0&k=20&c=S5aEgLdWpI2QyMovG5XfX08rCVY_WTAYqVP1W2iDHmY=',
      prevention:
          'Use fungicides, ensure good air circulation, and use resistant varieties.',
    ),
    Disease(
      name: 'Fusarium Wilt',
      description:
          'Causes wilting and yellowing of leaves, mostly affecting tomatoes, watermelons, and bananas.',
      imagePath: 'https://cdn.pixabay.com/photo/2019/08/09/17/44/sunflower-4395504_640.jpg',
      prevention: 'Use disease-free seeds, crop rotation, and soil fumigation.',
    ),
    Disease(
      name: 'Verticillium Wilt',
      description:
          'Leads to yellowing leaves and plant death, affecting eggplant, tomatoes, and potatoes.',
      imagePath: 'https://media.istockphoto.com/id/1290967510/photo/sick-cherry-tomatoes-affected-by-disease-vertex-rot.jpg?s=612x612&w=0&k=20&c=s-BLF7NOj4Z4g6kPd49vW7lpdVymjoPD-taLlBPFweE=',
      prevention: 'Use resistant varieties and ensure good soil health.',
    ),
    Disease(
      name: 'Bacterial Wilt',
      description:
          'Causes rapid wilting and death of plants, affecting cucumbers, tomatoes, and peppers.',
      imagePath: 'https://media.istockphoto.com/id/637185622/photo/sweet-pepper-disease-viral.jpg?s=612x612&w=0&k=20&c=c56p-D3YL3djPO5sVXdUEYic9mKj5-R3-fdLN0N5Apc=',
      prevention:
          'Use resistant varieties, control insect vectors, and avoid waterlogged soil.',
    ),
    Disease(
      name: 'Root Knot Nematode',
      description:
          'Forms galls on roots, stunting growth and reducing yield, affecting carrots, tomatoes, and cucumbers.',
      imagePath: 'https://media.istockphoto.com/id/1369623404/photo/nodules-of-lupine-roots-atmospheric-nitrogen-fixing-bacteria-live-inside.jpg?s=612x612&w=0&k=20&c=3BOAZRleTwhkW9ojf8nIf80wOLzBY3_dOirmCEzb8-w=',
      prevention:
          'Use nematicides, solarize soil, and practice crop rotation with non-host plants.',
    ),
    Disease(
      name: 'Leaf Curl',
      description:
          'Causes leaves to curl and thicken, affecting tomatoes and chili peppers.',
      imagePath: 'https://media.istockphoto.com/id/1394704822/photo/peach-fruit-tree-with-leaf-curl-diseases-closeup.jpg?s=612x612&w=0&k=20&c=y2pSC91giQErqO0mUr5DaxWcHQnA5JIKISUJdPqEZJ8=',
      prevention:
          'Use virus-free seeds, control insect vectors, and remove affected plants.',
    ),
    Disease(
      name: 'Anthracnose',
      description:
          'Results in dark, sunken lesions on fruits, leaves, and stems, affecting cucumbers, beans, and tomatoes.',
      imagePath: 'https://media.istockphoto.com/id/844341616/photo/anthracnose-in-papaya-fruit.jpg?s=612x612&w=0&k=20&c=BDEPc7v_MB4UYHgmfZTJ1Fn1GZ6BXD_tJ0-5RYcEoe8=',
      prevention:
          'Use resistant varieties, apply fungicides, and avoid overhead watering.',
    ),
    Disease(
      name: 'Damping Off',
      description:
          'Seedlings collapse and die, affecting most vegetable seedlings in moist conditions.',
      imagePath: 'https://media.istockphoto.com/id/1729128474/photo/collecting-healing-horsetail-herbs-hand-picking-off-medicinal-herbs-equisetum-arvense-for.jpg?s=612x612&w=0&k=20&c=GZ400TlbbBFjLbSJKT88yOALOn6ZfOYXldiQfG2SI8o=',
      prevention:
          'Use sterile soil for seed starting, avoid overwatering, and ensure good air circulation.',
    ),
    Disease(
      name: 'Early Blight',
      description:
          'Causes dark spots with concentric rings on leaves and stems, affecting potatoes and tomatoes.',
      imagePath: 'https://media.istockphoto.com/id/1201672222/photo/potatoes-eaten-by-pests.jpg?s=612x612&w=0&k=20&c=0nWzq-pl9_5UbCrfEbJNlhkUuDS5idfoc_6jN6jeT1w=',
      prevention:
          'Practice crop rotation, use fungicides, and avoid overhead watering.',
    ),
    Disease(
      name: 'Cucumber Mosaic Virus',
      description:
          'Leads to mottled leaves and stunted growth, affecting cucumbers, tomatoes, and peppers.',
      imagePath: 'https://media.istockphoto.com/id/1528440929/photo/cucumber-leaves-affected-by-the-cucumber-mosaic-virus-prevention-and-treatment-of-vegetable.jpg?s=612x612&w=0&k=20&c=zvtjsT-9E9Mens-JJ-N3NxMIW7U_hnvUUSFtyzdEQd8=',
      prevention:
          'Control weed and insect vectors, use virus-free seeds, and remove infected plants.',
    ),
    Disease(
      name: 'Clubroot',
      description:
          'Causes swelling and distortion of roots, affecting cabbage, cauliflower, and broccoli.',
      imagePath: 'https://media.istockphoto.com/id/1341815016/photo/a-large-head-of-cabbage-in-the-garden-bed-eaten-away-and-damaged-by-caterpillars.jpg?s=612x612&w=0&k=20&c=rBoq7YUI5BBxhphjaWsBbPsB-mh9yrRxnx_SFYb3vEI=',
      prevention:
          'Adjust soil pH to above 7.2, use resistant varieties, and practice crop rotation.',
    ),
    Disease(
      name: 'Black Rot',
      description:
          'Leads to blackening of veins and yellowing of leaves, affecting cabbage and cauliflower.',
      imagePath: 'https://media.istockphoto.com/id/1222490341/photo/rotting-head-of-orange-cauliflower-spots-of-black-mold-mildew.jpg?s=612x612&w=0&k=20&c=E6sAAg47Ds0g6gUQKYy8mmQRFRozax93Jvp8uB21sy0=',
      prevention:
          'Use certified seeds, remove crop debris, and practice crop rotation.',
    ),
    Disease(
      name: 'White Rust',
      description:
          'Causes white pustules on leaves, affecting mustard and other leafy vegetables.',
      imagePath: 'https://media.istockphoto.com/id/1629003302/photo/close-up-of-green-curly-kale-plant-in-a-vegetable-garden.jpg?s=612x612&w=0&k=20&c=l4_ClYEDttQqSU3m5xbEHRS2CM47ACOWvY7baRJrQ8s=',
      prevention:
          'Use resistant varieties, apply appropriate fungicides, and avoid overcrowding.',
    ),
    Disease(
      name: 'Powdery Mildew of Peas',
      description: 'Forms white powdery deposits on pea leaves and stems.',
      imagePath: 'https://media.istockphoto.com/id/1333348635/photo/fungal-plant-disease-powdery-mildew-on-peas-white-powdery-plaque-and-spots-appear-on-leaves.jpg?s=612x612&w=0&k=20&c=JtQPyJWD_rd0J8WBcn91tevpVxN2HiAY6Q0UKOomguw=',
      prevention:
          'Use resistant varieties, ensure good air circulation, and apply sulfur-based fungicides.',
    ),
    Disease(
      name: 'Carrot Fly',
      description: 'Larvae feed on carrot roots, causing them to rot.',
      imagePath: 'https://media.istockphoto.com/id/1355875797/photo/carrot-root-damaged-by-a-caterpillar-of-moths-of-the-owlet-moth-family-noctuidae-they-are.jpg?s=612x612&w=0&k=20&c=00fPzJCIEF8lkG3wf2iE5IVpvUcw3KtOGb89HPeChmw=',
      prevention:
          'Use protective netting, rotate crops, and remove affected plants.',
    ),
    Disease(
      name: 'Garlic Rust',
      description:
          'Leads to rust-colored spots on garlic leaves, affecting yield.',
      imagePath: 'https://media.istockphoto.com/id/1399955280/photo/onion-rust-symptoms-of-fungal-disease-of-onion-in-form-of-yellow-spots-on-leaf.jpg?s=612x612&w=0&k=20&c=xXq0ltgblDnxA2kNafhVSnIyfrMe_cANqWSW7pYmMUY=',
      prevention:
          'Plant early to avoid high humidity, use fungicides, and ensure good air circulation.',
    ),
    Disease(
      name: 'Tomato Yellow Leaf Curl',
      description:
          'Causes yellowing and curling of leaves, affecting tomato yield and quality.',
      imagePath: 'https://media.istockphoto.com/id/1424623608/photo/organic-tomato-cultivation-in-the-countryside-organic-food-agriculture-poland.jpg?s=612x612&w=0&k=20&c=ZICqdHrA76JPXLWVE2zvgo0GH8Jay1M92HmEVfBG48U=',
      prevention:
          'Control insect vectors, use virus-free seeds, and practice good weed management.',
    ),
    Disease(
      name: 'Powdery Mildew',
      description: 'Forms white powdery spots on leaves, affects many plants.',
      imagePath:
          'https://media.istockphoto.com/id/892929920/photo/powdery-mildew-on-roses-shoot-macro-close-up.jpg?s=612x612&w=0&k=20&c=pp9PONEyXSVRq8GQxrGf_6Y_-t_PF524UczIsR1A7lE=',
      prevention: 'Ensure good air circulation, apply sulfur-based fungicides.',
    ),
    Disease(
      name: 'Onion Smut',
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
          'Crop Diseases',
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
              title: Text(disease.name),
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
                "Prevention: ${disease.prevention}",
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
