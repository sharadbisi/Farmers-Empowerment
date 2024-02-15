import 'package:flutter/material.dart';

import 'main_screens/animals.dart';
import 'main_screens/blogs.dart';
import 'main_screens/diseases.dart';
import 'main_screens/seeds.dart';
import 'main_screens/soil.dart';
import 'main_screens/tools.dart';
import 'navbar_screens/more.dart';
import 'navbar_screens/profile.dart';
import 'navbar_screens/weather/weather.dart';
import 'package:farmer/chat-bot/chat_bot.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //DEFINING MAIN SCREENS
  final List<Widget> _mainscreens = [
    ToolsScreen(),
    SeedsScreen(),
    SoilTestingScreen(),
    DiseasesScreen(),
    AnimalScreen(),
    BlogsScreen(),
  ];

  var _currindex = 0;
  // DEFINE SCREENS FOR BOTOM NAVBAR
  final List<Widget> _screens = [
    Homepage(),
    WeatherScreen(),
    MoreScreen(),
    ProfileScreen(),
  ];

  var services = [
    'Farming Tools',
    'Seeds and Crops',
    'Soil Testing',
    'Plant Diseases',
    'Animal Husbandry',
    'Blogs',
  ];

  var images = [
    'images/tools.png',
    'images/seeds.png',
    'images/soil.png',
    'images/disease.png',
    'images/animal.png',
    'images/blog.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
        title: const Text('Farmer Empowerment'),
        backgroundColor: Colors.green[900],
        actions: [
          const Padding(padding: EdgeInsets.all(8)),
          IconButton(
            icon: const Icon(Icons.more_vert),
            color: const Color(0xffffffff),
            onPressed: () {
              _showPopupMenu(context);
            },
          ),
        ],
      ),
      //SERVICES PROVIDED BY APP DESIGN AND HANDLE THEM
      body: Padding(
        padding: const EdgeInsets.only(top:12), //I added this later to give padding on top. by wrip with padding
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                print('Tapped on ${services[index]}');
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => _mainscreens[index]),
                  );
                });
              },
              child: Card(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 14,
                    ),
                    Image.asset(
                      images[index],
                      height: 70,
                      width: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
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
              ),
            );
          },
        ),
      ),
      //BOTTOM NAVIGATION BAR DESIGN
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currindex,
        onTap: (value) {
          setState(() {
            _currindex = value;
            print('Tapped on the index number ${_currindex}');
            if (_currindex != 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => _screens[_currindex]),
              );
            }
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
      //CHAT-BOT UI DESIGN
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyChatBot()),
            );
          });
        },
        backgroundColor: Colors.white60,
        // child: Image.asset('images/chat-bot.gif'),
        child: Image.asset('images/bot.png'),
      ),
    );
  }

  // 3 DOT POPUP MENU DESIGN
  void _showPopupMenu(BuildContext context) async {
    const RelativeRect position = RelativeRect.fromLTRB(20, 30, 0, 50);
    await showMenu(
      context: context,
      position: position,
      items: <PopupMenuEntry>[
        const PopupMenuItem(
          value: 'Sign Up',
          child: Text("Sign Up"),
        ),
        const PopupMenuItem(
          value: 'Login',
          child: Text("Login"),
        ),
        const PopupMenuItem(
          value: 'Logout',
          child: Text("Logout"),
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      // HANDLE THE OPTION SELECTED BY USER
      if (value != null) {
        print("You selected: $value");
      }
    });
  }
}
