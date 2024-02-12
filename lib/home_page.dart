import 'package:flutter/material.dart';
import 'package:farmer/profile.dart';
import 'package:farmer/weather/weather.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currindex = 0;
  // DEFINE SCREENS FOR BOTOM NAVBAR
  final List<Widget> _screens = [
    Homepage(),
    WeatherScreen(),
    ProfileScreen(),
  ];

  var services = [
    'Tools',
    'Seeds',
    'Crops',
    'Plant Diseases',
    'Blogs',
    'weather Report',
  ];

  var images = [
    'images/tools.png',
    'images/seeds.png',
    'images/crops.png',
    'images/disease.png',
    'images/blog.png',
    'images/weather.png',
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
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              print('Tapped on ${services[index]}');
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 24,
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
      //BOTTOM NAVIGATION BAR DESIGN
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
      //CHAT-BOT UI DESIGN
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
