import 'package:flutter/material.dart';

import 'signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 90,
        centerTitle: true,
        title: const Text(
          'WELCOME !',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: const Color.fromARGB(255, 213, 236, 255),
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
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Text('जारी रखने के लिए कृपया लॉगिन करें'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'लॉगिन करें',
                  style: TextStyle(fontSize: 23),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.person_outline,
                      ),
                      labelText: 'उपयोगकर्ता नाम', //username
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.lock,
                      ),
                      labelText: 'पासवर्ड',
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      )),
                  onPressed: () {},
                  child: const Text(
                    'लॉगिन',
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      // const Text('Forgot Your Password?'),
                      const Text('पासवर्ड भूल गए?'),//बदलें
                      GestureDetector(
                        onTap: () =>
                            print('Clicked on password reset function'),
                        child: const Text(
                          ' रिसेट करें',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Row(
                    children: [
                      // const Text("Don't Have An Account?"),
                      const Text('नया अकाउंट बनायें'),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()),
                          );
                        },
                        child: const Text(
                          ' रजिस्टर करें',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
