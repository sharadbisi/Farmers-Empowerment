import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('PROFILE')),
    );
  }
}





// import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('प्रोफ़ाइल'),
//         backgroundColor: Colors.green[100], 
//       ),
//       body: ListView(
//         children: [
//           const SizedBox(height: 20),
//           const Center(
//             child: CircleAvatar(
//               radius: 80,
//               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/119873339?v=4'), 
//             ),
//           ),
//           const SizedBox(height: 20),
//           const Center(
//             child: Text(
//               'शरद', 
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ),
//           const SizedBox(height: 10),
//           const Center(
//             child: Text(
//               'demo@gmail.com',
//               style: TextStyle(fontSize: 18, color: Colors.grey),
//             ),
//           ),
//           const SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Column(
//               children: [
//                 ListTile(
//                   leading: const Icon(Icons.person),
//                   title: const Text('एडिट प्रोफ़ाइल'),
//                   onTap: () {
                    
//                   },
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.settings),
//                   title: const Text('सेटिंग्स'),
//                   onTap: () {
                   
//                   },
//                 ),
//                 ListTile(
//                   leading: const Icon(Icons.logout),
//                   title: const Text('लॉगआउट'),
//                   onTap: () {
                    
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
