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
      detailedDec:
          " ट्रैक्टर उपयोग खेत पर कई प्रकार के कार्य जैसे जुताई, रोपण, कटाई, और ढुलाई को अन्जाम देने के लिए किया जा सकता हैं। - अधिक हॉर्स पावर इंजन की वजह से यें भारी भार को संभालने में सक्षम होते हैं। - यूटिलिटी ट्रैक्टरों को हल, टिलर, घास काटने की मशीन, लोडर और स्प्रेयर जैसे विभिन्न उपकरणों के साथ आसानी से जोड़ा जा सकता है।",
    ),
    Tool(
      name: "कुदाल",
      description: "छोटे बगीचों और नरम मिट्टी के लिए आदर्श।",
      imageUrl: "images/tools/handplow.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec:
          '"कुदाल" एक प्रकार का उपकरण है जो मिट्टी खोदने, जमीन को समतल करने, खेती करने, और बगीचे की देखभाल में उपयोग किया जाता है। इसका उपयोग विशेष रूप से मिट्टी को खोदने, उलटने और हल करने के लिए किया जाता है। कुदाल का एक सपाट और तीखा आगे का भाग होता है जिसे मिट्टी में गहराई तक धकेला जा सकता है, और इसकी मदद से जमीन को आसानी से खोदा जा सकता है।',
    ),
    Tool(
      name: "स्प्रेयर मशीन",
      description:
          "इसका उपयोग खेतों पर कीटनाशकों, कीटनाशकों, शाकनाशियों और उर्वरकों का छिड़काव करने के लिए किया जाता है।",
      imageUrl: "images/tools/Sprayer.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=2Sl8ZPKgwJA&ab_channel=Toolsvilla-TV",
      detailedDec:
          '"स्प्रेयर मशीन" का उपयोग मुख्यतः कृषि और बागवानी में कीटनाशकों, हर्बिसाइड्स, फंगीसाइड्स, उर्वरकों और अन्य तरल पदार्थों को फसलों, पौधों और बागों पर छिड़काव करने के लिए किया जाता है। यह मशीन पौधों पर रसायनों का समान रूप से वितरण सुनिश्चित करती है, जिससे कीटों और रोगों से सुरक्षा मिलती है और पौधों की वृद्धि और विकास में सहायता मिलती है।'
          'स्प्रेयर मशीन के कुछ प्रमुख उपयोग निम्नलिखित हैं:'
          '1.कीटनाशकों का छिड़काव: फसलों पर हानिकारक कीटों और जीवों के नियंत्रण के लिए कीटनाशकों का छिड़काव किया जाता है।'
          '2.फंगीसाइड्स का छिड़काव: फसलों पर फंगल संक्रमण और रोगों के निवारण के लिए फंगीसाइड्स का उपयोग किया जाता है।'
          '3.हर्बिसाइड्स का छिड़काव: खरपतवारों के नियंत्रण और प्रबंधन के लिए हर्बिसाइड्स का छिड़काव किया जाता है।'
          '4.उर्वरकों का छिड़काव: पौधों को आवश्यक पोषक तत्व प्रदान करने के लिए तरल उर्वरकों का छिड़काव।'
          '5.वृद्धि उत्तेजकों का छिड़काव: पौधों की वृद्धि और विकास को बढ़ावा देने के लिए विशेष रसायनों का छिड़काव।',
    ),
    Tool(
      name: "रोटावेटर",
      description:
          " ट्रैक्टर से जुड़े हल को कल्टीवेटर कहा जाता है। इससे श्रम कम होता है और समय की बचत होती है।",
      imageUrl: "images/tools/Cultivator.jpg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec:
          '"रोटावेटर" एक कृषि उपकरण है जिसे मिट्टी की जुताई, खेत की तैयारी, और खरपतवार हटाने के लिए डिजाइन किया गया है। यह एक प्रकार का भूमि तैयारी उपकरण है जो मिट्टी को बहुत ही कुशलतापूर्वक और गहराई तक जोतने के लिए घूमने वाले ब्लेड्स का उपयोग करता है। रोटावेटर ट्रैक्टर के पीछे लगाया जाता है और इसे ट्रैक्टर के पीटीओ (पावर टेक ऑफ) शाफ्ट से चलाया जाता है, जो ब्लेड्स को घूमने की शक्ति प्रदान करता है।',
    ),
    Tool(
      name: "हाथ हंसिया",
      description:
          "हाथ की दरांती लकड़ी के हैंडल वाला एक घुमावदार ब्लेड है जिसका उपयोग घास, खरपतवार और घास काटने के लिए किया जाता है।",
      imageUrl: "images/tools/Hand_Sickle.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec:
          '"हाथ हंसिया" एक पारंपरिक कृषि उपकरण है जिसका उपयोग भारत और अन्य दक्षिण एशियाई देशों में विस्तार से किया जाता है। यह एक हाथ से चलाया जाने वाला उपकरण है जिसमें एक छोटी लेकिन तीव्र धार वाली ब्लेड होती है जो एक हैंडल से जुड़ी होती है। हंसिया का उपयोग मुख्यतः फसलों की कटाई, खरपतवार हटाने, और छोटे पौधों या शाखाओं को काटने के लिए किया जाता है।',
    ),
    Tool(
      name: "फावड़ा",
      description:
          " फावड़ा एक प्राचीन और बहुमुखी कृषि उपकरण है जिसका उपयोग मिट्टी को आकार देने, खरपतवारों को नियंत्रित करने, मिट्टी को साफ करने और जड़ वाली फसलों की कटाई के लिए किया जाता है।",
      imageUrl: "images/tools/Hoe.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec:
          '"फावड़ा" एक प्रकार का कृषि और निर्माण उपकरण है जिसका उपयोग मिट्टी को खोदने, उलटने, और स्थानांतरित करने के लिए किया जाता है। यह एक पारंपरिक उपकरण है जो भारत सहित दुनिया भर के कृषि समुदायों में व्यापक रूप से इस्तेमाल किया जाता है। फावड़ा मुख्यतः लोहे की बनी हुई एक तीव्र धार वाली प्लेट से युक्त होता है, जो एक लंबे हैंडल से जुड़ी होती है। हैंडल आमतौर पर लकड़ी का बना होता है।',
    ),
    Tool(
      name: "बेलचा",
      description:
          " यह भारतीय किसानों के बीच सबसे अधिक उपयोग किए जाने वाले कृषि उपकरणों में से एक है।",
      imageUrl: "images/tools/Shovel.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec:
          '"बेलचा" एक प्रकार का हाथ से चलाया जाने वाला उपकरण है जिसका उपयोग मिट्टी, रेत, बजरी, या अन्य सामग्री को खोदने, उठाने, और स्थानांतरित करने के लिए किया जाता है। यह निर्माण स्थलों, खेती, और बागवानी में विशेष रूप से उपयोगी होता है। बेलचा आमतौर पर एक बड़ी धातु की प्लेट से बना होता है जो एक लंबे हैंडल से जुड़ी होती है। हैंडल ज्यादातर लकड़ी का बना होता है, हालांकि इसे मेटल या अन्य मटेरियल से भी बनाया जा सकता है।',
    ),
    Tool(
      name: "कुल्हाड़ी",
      description:
          "सभी प्रकार के प्राथमिक और उन्नत उद्देश्यों के लिए, कृषि कार्यों के लिए कुल्हाड़ी का उपयोग और उपयोग किया जाता है।",
      imageUrl: "images/tools/Axe.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec:
          '"कुल्हाड़ी" एक प्रकार का हाथ से चलने वाला उपकरण है जो मुख्य रूप से लकड़ी को काटने और छांटने के लिए इस्तेमाल किया जाता है। यह एक प्राचीन उपकरण है जो कई सदियों से विभिन्न संस्कृतियों में व्यापक रूप से इस्तेमाल हो रहा है। कुल्हाड़ी में एक धारदार धातु का ब्लेड होता है जो एक लंबे हैंडल से जुड़ा होता है। हैंडल आमतौर पर लकड़ी का बना होता है, हालांकि आधुनिक कुल्हाड़ियों में फाइबरग्लास या अन्य सिंथेटिक मटेरियल के हैंडल भी हो सकते हैं।',
    ),
    Tool(
      name: "थ्रेसर",
      description:
          " यह उपकरण कटी हुई फसल को अनाज और गेहूं की छिलका छीलने के बाद अनाज को अलग करने में मदद करता है।",
      imageUrl: "images/tools/Thresher.jpeg",
      videoUrl:
          "https://www.youtube.com/watch?v=hhO_lvBBMSM&list=PLKANlcNm49aUphNC038ui2bbnRzp6ZvM6&ab_channel=DDKisan",
      detailedDec:
          'धान निपालने यंत्र का काम धान की छिलके और बीज को अलग करना होता है। यह उपकरण बीजों को निकालने में मदद करता है ताकि उन्हें अलग भी लिया जा सके और उनका उपयोग बाद में किया जा सके। धान निपालने यंत्र कई प्रकार के होते हैं, जैसे थ्रैशर मशीन, कंबाइन, और रोटारी थ्रैशर।'
          'यह उपकरण कृषकों को धान जैसे फसल को काटने और संसाधनों को बचाने में मदद करता है जिससे उनका समय और मेहनत बचती है। धान निपालने यंत्र आमतौर पर बड़ी स्केल पर फसल काटने के लिए उपयोग किया जाता है और इससे फसल के काटने का कार्य तेजी से और अधिक उत्तम तरीके से किया जा सकता है।',
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
