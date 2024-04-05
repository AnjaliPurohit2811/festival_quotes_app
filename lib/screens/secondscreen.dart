import 'dart:async';

import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120 , left: 60),
            child: Image.asset('asset/img/logo.jpg' , height: 200,),
          ),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Text('“Every choice we make can be  a \ncelebration of the world we want.”',
            style: TextStyle(color: Colors.black , fontSize: 20 ,
            fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100 , left: 70),
            child: CircularProgressIndicator(
              color: Colors.black,
              strokeAlign: 3,
            ),
          )
        ],
      ),
    );
  }
}
