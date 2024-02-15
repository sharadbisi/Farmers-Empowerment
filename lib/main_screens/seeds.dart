import 'package:flutter/material.dart';

class SeedsScreen extends StatelessWidget {
  SeedsScreen({super.key});
  final List<Crop> cropsData = [
    Crop(
      id: '1',
      name: 'Tomato',
      description: 'Rich in vitamins, ideal for a variety of climates.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/533280/pexels-photo-533280.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      id: '2',
      name: 'Wheat',
      description:'Staple grain for bread and cereals, requires moderate climates.',
      category: 'Grains',
      imageUrl: 'https://images.pexels.com/photos/326082/pexels-photo-326082.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      id: '3',
      name: 'Rice',
      description:'Staple grain for bread and cereals, requires moderate climates.',
      category: 'Grains',
      imageUrl: 'https://images.pexels.com/photos/2589457/pexels-photo-2589457.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      id: '4',
      name: 'Potato',
      description:'Staple grain for bread and cereals, requires moderate climates.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/144248/potatoes-vegetables-erdfrucht-bio-144248.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      id: '5',
      name: 'Onion',
      description:'Staple grain for bread and cereals, requires moderate climates.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/533342/pexels-photo-533342.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      id: '6',
      name: 'Broccoli ',
      description:'Staple grain for bread and cereals, requires moderate climates.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/47347/broccoli-vegetable-food-healthy-47347.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      id: '7',
      name: 'Peas',
      description:'Staple grain for bread and cereals, requires moderate climates.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/4750266/pexels-photo-4750266.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      id: '8',
      name: 'Corn',
      description:'Staple grain for bread and cereals, requires moderate climates.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/547263/pexels-photo-547263.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      id: '9',
      name: 'Carrots',
      description:'Staple grain for bread and cereals, requires moderate climates.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/1306559/pexels-photo-1306559.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    Crop(
      id: '10',
      name: 'Pumpkin',
      description:'Staple grain for bread and cereals, requires moderate climates.',
      category: 'Vegetables',
      imageUrl: 'https://images.pexels.com/photos/5574268/pexels-photo-5574268.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Seeds and Crops'),
        backgroundColor: Colors.orangeAccent[300],
      ),
      // body: Center(child: Text('SEEDS SCREEN')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: cropsData.length,
        itemBuilder: (ctx, i) => CropItem(
          id: cropsData[i].id,
          name: cropsData[i].name,
          imageUrl: cropsData[i].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}

class Crop {
  final String id;
  final String name;
  final String description;
  final String category;
  final String imageUrl;

  Crop({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.imageUrl,
  });
}

class CropItem extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;

  CropItem({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  void selectCrop(BuildContext context) {
    // Navigate to a new screen for detailed crop info
    // Navigator.of(context).pushNamed(...);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCrop(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                imageUrl,
                height: 50,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Text(
                name,
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
