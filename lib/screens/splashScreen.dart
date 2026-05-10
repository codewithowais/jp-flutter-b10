import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/screens/newscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (context) => const NewScreen()),
        );
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          "https://cdn.pixabay.com/photo/2020/02/03/10/07/lamborghini-4815249_1280.jpg",
        ),
      ),
    );
  }
}
