import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('प्रोफ़ाइल'),
        backgroundColor: const Color.fromARGB(255, 213, 236, 255),
        elevation: 0,
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg.jpg'),
              fit: BoxFit.cover, // Cover the entire screen
            ),
          ),
        ),
        ListView(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  'https://t3.ftcdn.net/jpg/04/43/94/64/240_F_443946404_7GUoIGZeyx7R7ymCicI3k0xPnrMoKDek.jpg',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'शरद',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'demo@gmail.com',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('एडिट प्रोफ़ाइल'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('सेटिंग्स'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('लॉगआउट'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
