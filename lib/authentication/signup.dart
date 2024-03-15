import 'package:flutter/material.dart';

import 'login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 90,
        centerTitle: true,
        title: const Text(
          'CREATE ACCOUNT',
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text('Please SignUp To Continue'),
              
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  // controller: _usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(
                      Icons.person_outline,
                      // color: Colors.orange,
                    ),
                    labelText: 'Full Name',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  // controller: _usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(
                      Icons.person_outline,
                      // color: Colors.orange,
                    ),
                    labelText: 'Email Address',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  // controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(
                      Icons.lock,
                      // color: Colors.grey,
                    ),
                    labelText: 'Create Password',
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
                  'SIGNUP',
                  // style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    const Text('Already Have An Account!'),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: const Text(
                        ' Login Here',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                'images/login_bg.jpg',
                height: 205,
                width: 400,
                fit: BoxFit.cover,
              ),
            ], //
          ), //
        ),
      ),
    );
  }
}
