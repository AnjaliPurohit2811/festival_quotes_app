
import 'package:flutter/material.dart';

class BackgroundSelect extends StatefulWidget {
  const BackgroundSelect({super.key});

  @override
  State<BackgroundSelect> createState() => _BackgroundSelectState();
}

class _BackgroundSelectState extends State<BackgroundSelect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
    );
  }
}
