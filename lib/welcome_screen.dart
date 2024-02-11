import 'package:farmer/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin{
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Homepage())
      );
    });
  }

  @override
  void dispose(){
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/f2.png',
            // cacheHeight: 120,
            // cacheWidth: 120,
            width: 200,
            height: 200,
            ),
            // const Text('WELCOME',
            // style: TextStyle(color: Colors.white,),
            // ),
          ],
        ),
      ),
    );
  }
}
