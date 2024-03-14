import 'package:flutter/material.dart';

class SeedsScreen extends StatelessWidget {
  SeedsScreen({super.key});
  final List<Crop> cropsData = [
    Crop(
      name: 'टमाटर',
      description: 'विटामिन से भरपूर, विभिन्न प्रकार की जलवायु के लिए आदर्श।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/533280/pexels-photo-533280.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'गेहूँ',
      description:
          'रोटी और अनाज के लिए मुख्य अनाज के लिए मध्यम जलवायु की आवश्यकता होती है।',
      category: 'अनाज',
      imageUrl:
          'https://images.pexels.com/photos/326082/pexels-photo-326082.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'धान',
      description:
          'दुनिया भर में एक मुख्य भोजन, गर्म, आर्द्र जलवायु में सर्वोत्तम।',
      category: 'अनाज',
      imageUrl:
          'https://images.pexels.com/photos/2589457/pexels-photo-2589457.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'आलू',
      description: 'बहुमुखी जड़ वाली सब्जी, ठंडी जलवायु में अच्छी तरह से बढ़ती है।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/144248/potatoes-vegetables-erdfrucht-bio-144248.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'प्याज',
      description:
          'कई व्यंजनों के लिए आवश्यक स्वाद, ठंडा मौसम पसंद करता है।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/533342/pexels-photo-533342.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'गोभी ',
      description: 'विटामिन के और सी से भरपूर, ठंडे मौसम में सबसे अच्छा बढ़ता है।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/47347/broccoli-vegetable-food-healthy-47347.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'मटर',
      description: 'फाइबर और प्रोटीन से भरपूर, ठंडा मौसम पसंद करता है।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/4750266/pexels-photo-4750266.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'भुट्टा',
      description: 'इसके पनपने के लिए गर्म मौसम और अच्छी मिट्टी की नमी की आवश्यकता होती है।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/547263/pexels-photo-547263.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'गाजर',
      description: 'कुरकुरे, मीठे और पौष्टिक, के लिए रेतीली मिट्टी की आवश्यकता होती है।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/1306559/pexels-photo-1306559.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'कद्दू',
      description:
          ' कद्दू एक स्थलीय, द्विबीजपत्री पौधा है जिसका तना लम्बा, कमजोर व हरे रंग का होता है। तने पर छोटे-छोटे रोयें होते हैं।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/5574268/pexels-photo-5574268.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'पालक',
      description:
          'पालक (वानस्पतिक नाम : Spinacia oleracea) अमरन्थेसी कुल का फूलने वाला पादप है, जिसकी पत्तियाँ एवं तने साग के रूप में खाये जाते हैं।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/7456526/pexels-photo-7456526.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'स्ट्रॉबेरी',
      description:
          'मीठे और रसीले फल के लिए पूर्ण सूर्य और अच्छी जल निकासी वाली मिट्टी की आवश्यकता होती है।',
      category: 'फल',
      imageUrl:
          'https://images.pexels.com/photos/46174/strawberries-berries-fruit-freshness-46174.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'खीरा',
      description: 'कुरकुरा और ताज़ा, गर्म और आर्द्र जलवायु में पनपता है।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/2329440/pexels-photo-2329440.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'लहसुन',
      description:
          'शक्तिशाली स्वाद बढ़ाने वाले, ठंडे तापमान और अच्छी जल निकासी वाली मिट्टी की आवश्यकता होती है।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/1460862/pexels-photo-1460862.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'पत्ता गोभी',
      description:
          'यह विटामिन सी और के, साथ ही आहार फाइबर का एक अच्छा स्रोत है।',
      category: 'सब्ज़ियाँ',
      imageUrl:
          'https://images.pexels.com/photos/134877/pexels-photo-134877.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'सेब',
      description:
          'कुरकुरा और मीठा, इसके लिए ठंडी सर्दियाँ और मध्यम गर्मी की आवश्यकता होती है।',
      category: 'फल',
      imageUrl:
          'https://images.pexels.com/photos/672101/pexels-photo-672101.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'चेरी',
      description:
          'मीठा हो या तीखा, इसके लिए ठंडी सर्दियाँ और अच्छी जल निकासी वाली मिट्टी की आवश्यकता होती है।',
      category: 'फल',
      imageUrl:
          'https://images.pexels.com/photos/966416/pexels-photo-966416.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'ब्लूबेरी',
      description:
          'पौष्टिक और स्वादिष्ट, अम्लीय मिट्टी और पूर्ण सूर्य की आवश्यकता होती है।',
      category: 'फल',
      imageUrl:
          'https://images.pexels.com/photos/4022088/pexels-photo-4022088.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'बादाम',
      description:
          'पौष्टिक और बहुमुखी, गर्म ग्रीष्मकाल और अच्छी जल निकासी वाली मिट्टी की आवश्यकता होती है।',
      category: 'Nuts',
      imageUrl:
          'https://images.pexels.com/photos/1013420/pexels-photo-1013420.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'अंगूर',
      description:
          'ताजा खाने या वाइन बनाने के लिए पूर्ण सूर्य और अच्छी जल निकासी वाली मिट्टी की आवश्यकता होती है।',
      category: 'फल',
      imageUrl:
          'https://images.pexels.com/photos/4828955/pexels-photo-4828955.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'बीज और फसलें',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber[200],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: cropsData.length,
        itemBuilder: (ctx, i) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ItemDetailScreen(
                  crop: cropsData[i],
                ), // Pass the crop data to the ItemDetailScreen
              ),
            );
          },
          child: CropItem(
            name: cropsData[i].name,
            imageUrl: cropsData[i].imageUrl,
          ),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}

//THIS CLASS IS USED FOR ITEMS OF SEEDS & CROPS
class Crop {
  final String name;
  final String description;
  final String category;
  final String imageUrl;

  Crop({
    required this.name,
    required this.description,
    required this.category,
    required this.imageUrl,
  });
}

//THIS CLASS USED FOR MAKE DESIGN OF SEEDS & SCREEN
class CropItem extends StatefulWidget {
  final String name;
  final String imageUrl;

  const CropItem({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  State<CropItem> createState() => _CropItemState();
}

///THIS CLASS IS USE FOR DESIGNING MY CARD
class _CropItemState extends State<CropItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 40,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              widget.imageUrl,
              height: 50,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              widget.name,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

///  THIS CLASS SHOWS DETAILS OF MYPERTICULAR CARD ITEMS
class ItemDetailScreen extends StatelessWidget {
  final Crop crop;

  const ItemDetailScreen({super.key, required this.crop});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(crop.name),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.network(crop.imageUrl),
            Text(
              'वर्ग :- ${crop.category}',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              crop.description,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
