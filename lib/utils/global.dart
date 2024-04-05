import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

bool isList = true;
int postImageIndex = 0;
int editIndex = 0;
bool isImageColor = true;
int backgroundIndex = 0;
double fontSize = 12.0;
double top = 0;
double bottom = 0;
double right = 0;
double left = 0;
Alignment n = Alignment.topLeft;
Alignment n1 = Alignment.topCenter;
Alignment n2 = Alignment.topRight;
Alignment? n0;
int colorIndex=0;
int colorIndex1=0;
int fontFamilyIndex =0;
bool isImage = true;
List TextEditingControllerlist=[];
TextEditingController txtName = TextEditingController(text: '');
GlobalKey imgKey = GlobalKey();
Uint8List? imgdata;

List colorList =[
  Colors.black,
  Colors.blueGrey,
  Colors.blue,
  Colors.white,
  Colors.amber,
];

List colorList2 =[
  Colors.lightGreen,
  Colors.grey,
  Colors.yellowAccent,
  Colors.green,
  Colors.orange,
];

List textFamily = [
  GoogleFonts.nunito,
  GoogleFonts.playfairDisplay,
  GoogleFonts.roboto,
  GoogleFonts.lato,
  GoogleFonts.kanit,
  GoogleFonts.montserrat,
  GoogleFonts.oswald,
  GoogleFonts.raleway,
  GoogleFonts.quicksand,
  GoogleFonts.poppins,
  GoogleFonts.workbench,
];