import 'package:flutter/material.dart';

class SoilTestingScreen extends StatelessWidget {
  const SoilTestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('मिट्टी परीक्षण'),
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/soil_test/soiltesting.jpg',
              height: 200,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'यह रासायनिक सामग्री, विषाक्तता, पीएच स्तर, लवणता, पृथ्वी पर रहने वाले बायोटा आदि जैसे कई मापदंडों के लिए कृषि भूमि का विश्लेषण है। ऐसे परीक्षण रासायनिक संदूषण, ह्यूमिक या कार्बनिक सामग्री, विद्युत चालकता, धनायन विनिमय क्षमता और अन्य भौतिक पर भी जानकारी प्रदान करते हैं। और रासायनिक गुण.',
                style: TextStyle(
                    fontFamily: AutofillHints.addressCity,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SoilTestingGuide()),
                );
              },
              child: const Text('मिट्टी परीक्षण'),
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
              child: const Text('परिणाम व्याख्या'),
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
              child: const Text('मिट्टी प्रबंधन युक्तियाँ'),
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
      'चरण 1: सतह से 4-6 इंच नीचे से अपनी मिट्टी का नमूना एकत्र करें।',
      'चरण 2: मिट्टी को आसुत जल के साथ मिलाएं और इसे जमने दें।',
    ],
    'Moisture Test': [
      'चरण 1: एक मुट्ठी मिट्टी इकट्ठा करें और उसे निचोड़ें।',
      'चरण 2: यदि मिट्टी एक गेंद बनकर एक साथ चिपक जाती है, तो इसमें नमी की मात्रा अधिक है।',
    ],
    'Nitrogen Test': [
      'चरण 1: मिट्टी का नमूना इकट्ठा करें और इसे एक कंटेनर में रखें।',
      'चरण 2: मिट्टी के नमूने में नाइट्रेट अभिकर्मक की कुछ बूँदें जोड़ें।',
    ],
    'Phosphorus Test': [
      'चरण 1: मिट्टी का नमूना इकट्ठा करें और इसे फॉस्फोरस अभिकर्मक के साथ मिलाएं।',
      'चरण 2: मिट्टी के मिश्रण में रंग परिवर्तन का निरीक्षण करें।',
    ],
    'Potassium Test': [
      'चरण 1: मिट्टी का नमूना इकट्ठा करें और इसे एक परखनली में डालें।',
      'चरण 2: मिट्टी के नमूने में पोटेशियम अभिकर्मक की कुछ बूँदें जोड़ें।',
    ],
    'Organic Matter Test': [
      'चरण 1: मिट्टी के नमूने को तौलें और उसे ओवन में सुखाएं।',
      'चरण 2: कार्बनिक पदार्थ की मात्रा निर्धारित करने के लिए सुखाने के बाद वजन के अंतर की गणना करें।',
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
        title: const Text('मिट्टी परीक्षण दिशानिर्देश'),
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
              elevation: 0,
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
              'निर्देश:',
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
        title: const Text('परिणाम व्याख्या'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const <Widget>[
            Text(
              'अपने मृदा परीक्षण परिणामों को समझना',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'PH स्तर:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '6.0 से नीचे का पीएच अधिकांश फसलों के लिए बहुत अम्लीय होता है और इसमें चूने की आवश्यकता हो सकती है। 7.5 से ऊपर का पीएच अत्यधिक क्षारीय होता है और इसमें सल्फर की आवश्यकता हो सकती है।',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'नमी:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'कम नमी के स्तर के लिए बेहतर जल प्रतिधारण रणनीतियों की आवश्यकता होती है, जैसे मल्चिंग या जल-अवशोषित पॉलिमर का उपयोग।',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'पोषक तत्व:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'कम नाइट्रोजन स्तर को हरी खाद या जैविक उर्वरकों से सुधारा जा सकता है। फास्फोरस और पोटेशियम का स्तर विशिष्ट पोषक तत्वों के अनुप्रयोग को निर्देशित करता है।',
              style: TextStyle(fontSize: 16),
            ),
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
        title: const Text('मृदा प्रबंधन युक्तियाँ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const <Widget>[
            Text(
              'मृदा प्रबंधन युक्तियाँ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '1. pH समायोजन:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'यदि आपकी मिट्टी का पीएच बहुत अधिक अम्लीय या क्षारीय है, तो पीएच को अपनी फसलों के लिए इष्टतम सीमा पर समायोजित करने के लिए चूना या सल्फर लगाने पर विचार करें।',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '2. कार्बनिक पदार्थ:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'मिट्टी की संरचना, जल धारण और पोषक तत्वों की उपलब्धता में सुधार के लिए खाद, गोबर या कवर फसलों जैसे कार्बनिक पदार्थों को शामिल करें।',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '3. पोषक तत्व प्रबंधन:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'अपने मिट्टी परीक्षण के परिणामों के आधार पर, पोषक तत्वों की कमी को दूर करने और फसल के विकास के लिए इष्टतम पोषक तत्वों के स्तर को बनाए रखने के लिए उर्वरक या मिट्टी में संशोधन लागू करें।',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '4. फसल चक्र:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'मिट्टी की कमी और पोषक तत्वों के असंतुलन को रोकने, कीट और बीमारी के दबाव को कम करने और समग्र मिट्टी के स्वास्थ्य में सुधार के लिए फसल चक्र प्रथाओं को लागू करें।',
              style: TextStyle(fontSize: 16),
            ),
            // Add more tips as needed
          ],
        ),
      ),
    );
  }
}
