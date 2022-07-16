import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsapp/screens/news_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const NewsScreen()));
  }

  startTime() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Image.asset(
            "assets/images/bgframe.png",
            height: double.infinity,
          ),
          Positioned(
            top: 150,
            left: 65,
            child: Image.asset("assets/images/newslogo.png"),
          ),
          const Center(
            child: Text(
              "We Show News For You",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Positioned(
            top: 700,
            left: 320,
            child: TextButton(
              onPressed: route,
              child: const Text(
                "Skip",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
