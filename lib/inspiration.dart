// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/material.dart';

class Inspiration extends StatefulWidget{
  // const Inspiration({Key? key}) :super(key: key)
  @override
  State<Inspiration> createState() => _InspirationState();
}

class _InspirationState extends State<Inspiration> {
  // int _selectedTabIndex =0;

  // void -onNavbarTapped(int index){
  //   setState(() {
  //     _selectedTabIndex=index;
  //   });
  // }

  @override
  Widget build(BuildContext context){
    // final _listPage = <Widget>[
    //   const Text('beranda'),
    //   const Text('inspiratiom')
    // ];
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leadingWidth: 500,
          backgroundColor: Colors.transparent,
          leading: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text('Temukan Inspirasi',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1B1B1B)
                ),),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Color(0xff1B1B1B),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xff1B1B1B),
              ),
            ),
          ]),
          //
          body: Column(
            children: [
              Text('inspiration')
            ],
          ),
          



          //
      //     bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: Color(0xff0058AB),
      //   selectedFontSize: 12,
      //   selectedLabelStyle: TextStyle(color: Color(0xff0058AB)),
      //   unselectedItemColor: Color(0xff1B1B1B),
      //   unselectedFontSize: 12,
      //   unselectedLabelStyle: TextStyle(color: Color(0xff6C6C6C)),
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Beranda',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.heart_broken_outlined),
      //       label: 'Inspirasi',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.coffee_outlined),
      //       label: 'Wishlist',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_2_outlined),
      //       label: 'Profil',
      //     ),
      //   ],
      // ),

      // final _bottomNavBarItems = <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Beranda',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.heart_broken_outlined),
      //       label: 'Inspirasi',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.coffee_outlined),
      //       label: 'Wishlist',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_2_outlined),
      //       label: 'Profil',
      //     ),
      //   ];
      // final _bottomNavBar = bottomNavigationBar: ,
    );
  }
}