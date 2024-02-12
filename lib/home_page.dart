import 'package:farmer/Scroll_bar.dart';
import 'package:farmer/profile.dart';
import 'package:farmer/weather/weather.dart';
import 'package:flutter/material.dart';
import 'my_news.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currindex = 0;
  // defining my screens of botttom nav bar
  final List<Widget> _screens = [
    Homepage(),
    WeatherScreen(),
    ProfileScreen(),
  ];

  /* //this are for 1st experiment
   final List _news = [
    'images/1.jpeg',
    'images/2.jpeg',
    'images/1.jpeg',
    'images/1.jpeg'
  ];
  final List _posts = ['Post 1', 'post 2', 'Post 3'];*/

  //this is for 2nd experiment
  var services = [
    'Tools',
    'Seeds',
    'Crops',
    'Plant Diseases',
    'Blogs',
    'weather Report',
  ];

  var images = [
    'tools.jpg',
    'seeds.jpg',
    'crop.jpg',
    'diasease.jpg',
    'blog.jpg',
    'weather.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
        title: const Text('Farmer Empowerment'),
        backgroundColor: Colors.green[900],
        actions: [
          // Padding(padding: EdgeInsets.all(8)),
          IconButton(
            icon: const Icon(Icons.more_vert),
            color: const Color(0xffffffff),
            onPressed: () {
              _showPopupMenu(context);
            },
          ),
        ],
      ),

      ///First Body for 1st Experiment
      // body: Column(
      //   children: [
      //     //news scroll
      //     SizedBox(
      //       height: 200,
      //       child: ListView.builder(
      //         itemCount: _news.length,
      //         scrollDirection: Axis.horizontal,
      //         itemBuilder: (context, index) {
      //           return MyNews(
      //             child: _news[index],
      //           );
      //         },
      //       ),
      //     ),

      //     //for more like:- weather forecasting
      //     Expanded(
      //       //this is for for scrollable list view
      //       child: ListView.builder(
      //         itemCount: _posts.length,
      //         itemBuilder: (context, index) {
      //           return Square(
      //             child: _posts[index],
      //           );
      //         },
      //       ),
      //     ),
      //     // _screens.elementAt(_currIndex),
      //   ],
      // ),

      ///Second Body for 2nd Experiment
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  images[index],
                  height: 30,
                  width: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    services[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          );
        },
      ),
      //BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currindex,
        onTap: (value) {
          setState(() {
            _currindex = value;
            print('Tapped on the index number ${_currindex}');
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_cloudy_outlined),
            label: 'Weather',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // shape: Border.all(color: Color.fromARGB(255, 0, 0, 0),width: 2,strokeAlign: BorderSide.strokeAlignCenter),
        onPressed: () {},
        backgroundColor: Colors.greenAccent,
        child: const Icon(Icons.forum, size: 30),
      ),
    );
  }

//start popup menu
  void _showPopupMenu(BuildContext context) async {
    const RelativeRect position = RelativeRect.fromLTRB(20, 30, 0, 50);
    await showMenu(
      context: context,
      position:
          position, // Using RelativeRect.fill for demonstration, adjust as needed
      items: <PopupMenuEntry>[
        const PopupMenuItem(
          value: 'Weather Forecasting',
          child: Text("Weather Forecasting"),
        ),
        const PopupMenuItem(
          value: 'Tools',
          child: Text("Tools"),
        ),
        const PopupMenuItem(
          value: 'ChatBot',
          child: Text("ChatBot"),
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      // Handle the option selected by the user.
      if (value != null) {
        print("You selected: $value");
      }
    });
  }
}
