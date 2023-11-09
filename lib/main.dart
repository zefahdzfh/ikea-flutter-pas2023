// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:ikea_pas2023/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData.dark().copyWith(ma
      //   scaffoldBackgroundColor: Color(0xff0f0f0f)
      // ),
      home: Home(),
    );
  }
}