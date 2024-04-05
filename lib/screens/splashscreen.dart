import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/second');
    });
    return Scaffold(
      body: Center(
          child: Image.asset(
        'asset/img/logo.jpg',
        height: 280,
      ),
      ),

    );
  }
}
