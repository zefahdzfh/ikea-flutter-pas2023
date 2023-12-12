// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ikea_pas2023/home/home.dart';
import 'package:ikea_pas2023/inspiration/inspiration.dart';
import 'package:ikea_pas2023/profile.dart';
import 'package:ikea_pas2023/wishlist/wishlist.dart';
import 'package:lucide_icons/lucide_icons.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // darkTheme: ThemeData.dark().copyWith(ma
//       //   scaffoldBackgroundColor: Color(0xff0f0f0f)
//       // ),
//       home: Home(),
//     );
//   }
// }

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => BottomNavigationBarExample())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 121,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logoikea.png',
                  
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                    'Creating a better everyday life \nfor the many people.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6C6C6C),
                    ),
                    textAlign: TextAlign.center)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
      
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Inspiration(),
    Wishlist(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff0058AB),
        selectedFontSize: 12,
        selectedLabelStyle: TextStyle(color: Color(0xff0058AB)),
        unselectedItemColor: Color(0xff1B1B1B),
        unselectedFontSize: 12,
        unselectedLabelStyle: TextStyle(color: Color(0xff6C6C6C)),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.coffee),
            label: 'Inspirasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.heart),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.userCircle2),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
