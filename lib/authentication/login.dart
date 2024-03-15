import 'package:flutter/material.dart';

import 'signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text('Please Login To Continue'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'LOGIN',
                style: TextStyle(fontSize: 23),
              ),
              const SizedBox(
                height: 40,
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
                    labelText: 'Username',
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
                    labelText: 'Password',
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
                  'LOGIN',
                  // style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    Text('Forgot Your Password?'),
                    Text(
                      ' Reset Here',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              // const SizedBox(height: 5),
               Padding(
                padding: const EdgeInsets.only(left: 75),
                child: Row(
                  children: [
                    const Text("Don't Have An Account?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => SignUpScreen()),
                        );
                      },
                      child: const Text(
                        ' Register',
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
            ],
          ),
        ),
      ),
    );
  }
}
