import 'package:flutter/material.dart';

class SeedsScreen extends StatelessWidget {
  SeedsScreen({super.key});
  final List<Crop> cropsData = [
    Crop(
      name: 'Tomato',
      description: 'Rich in vitamins, ideal for a variety of climates.',
      category: 'Vegetables',
      imageUrl:
          'https://images.pexels.com/photos/533280/pexels-photo-533280.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Wheat',
      description:
          'Staple grain for bread and cereals, requires moderate climates.',
      category: 'Grains',
      imageUrl:
          'https://images.pexels.com/photos/326082/pexels-photo-326082.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Rice',
      description:
          'A staple food across the world, best in warm, humid climates.',
      category: 'Grains',
      imageUrl:
          'https://images.pexels.com/photos/2589457/pexels-photo-2589457.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Potato',
      description: 'Versatile root vegetable, grows well in cooler climates.',
      category: 'Vegetables',
      imageUrl:
          'https://images.pexels.com/photos/144248/potatoes-vegetables-erdfrucht-bio-144248.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Onion',
      description:
          'Essential flavoring for many dishes, prefers cooler weather.',
      category: 'Vegetables',
      imageUrl:
          'https://images.pexels.com/photos/533342/pexels-photo-533342.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Broccoli ',
      description: 'High in vitamins K and C, grows best in cooler seasons.',
      category: 'Vegetables',
      imageUrl:
          'https://images.pexels.com/photos/47347/broccoli-vegetable-food-healthy-47347.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Peas',
      description: 'Rich in fiber and protein, prefers cooler weather.',
      category: 'Vegetables',
      imageUrl:
          'https://images.pexels.com/photos/4750266/pexels-photo-4750266.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Corn',
      description: 'Requires warm weather and good soil moisture to thrive.',
      category: 'Vegetables',
      imageUrl:
          'https://images.pexels.com/photos/547263/pexels-photo-547263.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Carrots',
      description: 'Crunchy, sweet, and nutritious, requires sandy soil.',
      category: 'Vegetables',
      imageUrl:
          'https://images.pexels.com/photos/1306559/pexels-photo-1306559.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Pumpkin',
      description:
          'Symbol of fall, requires warm soil and lots of space to grow.',
      category: 'Vegetables',
      imageUrl:
          'https://images.pexels.com/photos/5574268/pexels-photo-5574268.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Spinach',
      description:
          'A powerhouse of nutrients, spinach is rich in iron, vitamins A, C, and K, magnesium, manganese, and folate.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/7456526/pexels-photo-7456526.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Strawberry',
      description:
          'Sweet and juicy fruit, requires full sun and well-drained soil.',
      category: 'Fruits',
      imageUrl: 'https://images.pexels.com/photos/46174/strawberries-berries-fruit-freshness-46174.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Cucumber',
      description: 'Crisp and refreshing, thrives in warm and humid climates.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/2329440/pexels-photo-2329440.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Garlic',
      description:
          'Powerful flavor enhancer, requires cool temperatures and well-drained soil.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/1460862/pexels-photo-1460862.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Cabbage',
      description: 'It is a good source of vitamins C and K, as well as dietary fiber.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/134877/pexels-photo-134877.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Apple',
      description:
          'Crunchy and sweet, requires cold winters and moderate summers.',
      category: 'Fruits',
      imageUrl: 'https://images.pexels.com/photos/672101/pexels-photo-672101.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Cherry',
      description:
          'Sweet or tart, requires cold winters and well-drained soil.',
      category: 'Fruits',
      imageUrl: 'https://images.pexels.com/photos/966416/pexels-photo-966416.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Blueberry',
      description:
          'Nutritious and flavorful, requires acidic soil and full sun.',
      category: 'Fruits',
      imageUrl: 'https://images.pexels.com/photos/4022088/pexels-photo-4022088.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Almond',
      description:
          'Nutritious and versatile, requires hot summers and well-drained soil.',
      category: 'Nuts',
      imageUrl: 'https://images.pexels.com/photos/1013420/pexels-photo-1013420.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      name: 'Grape',
      description:
          'For fresh eating or winemaking, requires full sun and well-drained soil.',
      category: 'Fruits',
      imageUrl: 'https://images.pexels.com/photos/4828955/pexels-photo-4828955.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Seeds and Crops',
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
                    crop: cropsData[
                        i]), // Pass the crop data to the ItemDetailScreen
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
            Text('category :- ${crop.category}',style: TextStyle(fontSize: 22),),
            Text(crop.description,style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),),
          ],
        ),
      ),
    );
  }
}
