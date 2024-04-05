import 'package:festival_quotes_app/screens/editscreen.dart';
import 'package:festival_quotes_app/screens/homescreen.dart';
import 'package:festival_quotes_app/screens/secondscreen.dart';
import 'package:festival_quotes_app/screens/splashscreen.dart';
import 'package:festival_quotes_app/screens/viewscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FestiveQuote());
}

class FestiveQuote extends StatelessWidget {
  const FestiveQuote({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
     // initialRoute: '/edit',
     routes: {



          '/':(context) => SplashScreen(),
          '/second' : (context) => SecondScreen(),
        '/home' : (context) => HomeScreen(),
       '/view' : (context) => ViewScreen(),
       '/edit' : (context) => EditScreen(),
     },


    );
  }
}
