import 'package:flutter/material.dart';

class News {
  final String title;
  final String imageUrl;
  final String description;

  News({required this.title, required this.imageUrl, required this.description});
}

class NewsScreen extends StatelessWidget {
  
   NewsScreen({super.key});

  final List<News> newsList = [
    News(
      title: "किसान आंदोलन के बीच कांग्रेस ने किया एमएसपी की कानूनी गारंटी का वादा",
      imageUrl: "https://c.ndtvimg.com/2024-01/i6q0orh8_mallikarjun-kharge_625x300_28_January_24.jpg?im=FitAndFill,algorithm=dnn,width=240,height=180",
      description: 'कांग्रेस महासचिव जयराम रमेश ने ‘एक्स’ पर पोस्ट किया, ‘‘आज छत्तीसगढ़ के अंबिकापुर में हरित और श्वेत क्रांति की नींव रखने वाली पार्टी ने किसान और किसान परिवारों के लिए एक और ऐतिहासिक और क्रांतिकारी घोषणा की है, जो शीघ्र ही जनता के समर्थन से हक़ीक़त बन जाएगी.',
    ),
     News(
      title: "मौसम की सटीक भविष्यवाणी से किसानों को होगा दोगुना लाभ, एक स्टडी में हुआ खुलासा ",
      imageUrl: "https://akm-img-a-in.tosshub.com/aajtak/images/story/202402/65dc4bf6c64d0-pm-kisan-191235401-16x9.jpg?size=948:533",
      description: "एक स्टडी में दावा किया गया है कि अत्यधिक सटीक पूर्वानुमान कम से कम 4 से 6 हफ्तों के लिए किसानों की मदद कर सकते हैं, जिससे किसान तय करते हैं कि उन्हें जिससे किसान तय करते हैं कि उन्हें कितनी फसल बोना है, क्या फसल लगानी है या क्या नहीं.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latest News'),
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          final news = newsList[index];
          return Card(
            child: ListTile(
              leading: Image.network(news.imageUrl, width: 100, fit: BoxFit.cover),
              title: Text(news.title),
              subtitle: Text(news.description),
            ),
          );
        },
      ),
    );
  }
}
