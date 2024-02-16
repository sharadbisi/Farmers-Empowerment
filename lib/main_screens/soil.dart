import 'package:flutter/material.dart';

class SoilTestingScreen extends StatelessWidget {
  const SoilTestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Soil Testing'),
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://images.pexels.com/photos/169523/pexels-photo-169523.jpeg?auto=compress&cs=tinysrgb&w=600',height: 200,),
            const Text('It is the farmland analysis for multiple parameters like chemical content, toxicity, pH level, salinity, earth-dwelling biota, etc. Such tests also provide information on chemical contamination, humic or organic content, electric conductivity, cation exchange capacity, and other physical and chemical properties.',style: TextStyle(fontFamily: AutofillHints.addressCity,fontSize: 20,fontWeight: FontWeight.w300),),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SoilTestingGuide()),
                );
              },
              child: const Text('Soil Testing Guide'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResultsInterpretation(),
                  ),
                );
              },
              child: const Text('Results Interpretation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SoilManagementTips(),
                  ),
                );
              },
              child: const Text('Soil Management Tips'),
            ),
          ],
        ),
      ),
    );
  }
}

///SOIL TESTING GUIDE SCREEN
class SoilTestingGuide extends StatelessWidget {
  final Map<String, List<String>> testInstructions = {
    'pH Test': [
      'Step 1: Collect your soil sample from 4-6 inches below the surface.',
      'Step 2: Mix soil with distilled water and let it settle.',
    ],
    'Moisture Test': [
      'Step 1: Collect a handful of soil and squeeze it.',
      'Step 2: If the soil forms a ball and sticks together, it has high moisture content.',
    ],
    'Nitrogen Test': [
      'Step 1: Collect a soil sample and place it in a container.',
      'Step 2: Add a few drops of nitrate reagent to the soil sample.',
    ],
    'Phosphorus Test': [
      'Step 1: Collect a soil sample and mix it with a phosphorus reagent.',
      'Step 2: Observe the color change in the soil mixture.',
    ],
    'Potassium Test': [
      'Step 1: Collect a soil sample and add it to a test tube.',
      'Step 2: Add a few drops of potassium reagent to the soil sample.',
    ],
    'Organic Matter Test': [
      'Step 1: Weigh a soil sample and dry it in an oven.',
      'Step 2: Calculate the weight difference after drying to determine the organic matter content.',
    ],
  };

  final Map<String, String> testImages = {
    'pH Test': 'images/soil_test/ph.png',
    'Moisture Test': 'images/soil_test/moisture.png',
    'Nitrogen Test': 'images/soil_test/nitrogen.png',
    'Phosphorus Test': 'images/soil_test/phosphorus.png',
    'Potassium Test': 'images/soil_test/potassium.png',
    'Organic Matter Test': 'images/soil_test/organic.png',
  };

  SoilTestingGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soil Testing Guideline'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: testInstructions.keys.map((test) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TestInstructionsScreen(
                    testName: test,
                    instructions: testInstructions[test]!,
                    imagePath: testImages[test]!,
                  ),
                ),
              );
            },
            child: Card(
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    testImages[test]!,
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    test,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class TestInstructionsScreen extends StatelessWidget {
  final String testName;
  final List<String> instructions;
  final String imagePath;

  const TestInstructionsScreen({
    super.key,
    required this.testName,
    required this.instructions,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$testName Instructions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Instructions:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: instructions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text((index + 1).toString()),
                    ),
                    title: Text(instructions[index]),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              imagePath,
              height: 300,
              width: 300,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}

//RESULT INTERPRETATION SCREEN
class ResultsInterpretation extends StatelessWidget {
  const ResultsInterpretation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results Interpretation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const <Widget>[
            Text(
              'Understanding Your Soil Test Results',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'PH Level:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'A pH below 6.0 is too acidic for most crops and may need lime. A pH above 7.5 is too alkaline and may require sulfur.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Moisture:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Low moisture levels require improved water retention strategies, such as mulching or the use of water-absorbent polymers.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Nutrients:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Low nitrogen levels could be improved with green manures or organic fertilizers. Phosphorus and potassium levels guide the application of specific nutrients.',
              style: TextStyle(fontSize: 16),
            ),
            // Add more sections as needed for other test results
          ],
        ),
      ),
    );
  }
}

/// SOIL MANAGEMENT TIPS PROVIDER
class SoilManagementTips extends StatelessWidget {
  const SoilManagementTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soil Management Tips'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const <Widget>[
            Text(
              'Soil Management Tips',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '1. pH Adjustment:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'If your soil pH is too acidic or alkaline, consider applying lime or sulfur to adjust the pH to the optimal range for your crops.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '2. Organic Matter:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Incorporate organic matter such as compost, manure, or cover crops to improve soil structure, water retention, and nutrient availability.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '3. Nutrient Management:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Based on your soil test results, apply fertilizers or soil amendments to correct nutrient deficiencies and maintain optimal nutrient levels for crop growth.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '4. Crop Rotation:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Implement crop rotation practices to prevent soil depletion and nutrient imbalances, reduce pest and disease pressure, and improve overall soil health.',
              style: TextStyle(fontSize: 16),
            ),
            // Add more tips as needed
          ],
        ),
      ),
    );
  }
}
