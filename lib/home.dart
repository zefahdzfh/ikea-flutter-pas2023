// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ikea_pas2023/alex.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Image.asset(
            'assets/ikea.png',
            width: 85,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Column(
              children: [
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffE7E7E7))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                      style: TextStyle(color: Color(0xff1B1B1B), fontSize: 16),
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            color: Color(0xff1B1B1B),
                          ),
                          hintText: 'Cari barang impianmu',
                          hintStyle:
                              TextStyle(color: Color(0xff6C6C6C), fontSize: 16),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Image.asset('assets/banner1.png'),
                SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        categories('assets/kamartidur.png', 'Kamar Tidur'),
                        categories('assets/ruangkerja.png', 'Ruang Kerja'),
                        categories('assets/dapur.png', 'Dapur'),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        categories('assets/bayianak.png', 'Bayi & Anak'),
                        categories('assets/tekstil.png', 'Tekstil'),
                        categories('assets/penyimpanan.png', 'Penyimpanan'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                Column(
                  children: [
                    header('Produk Populer'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          products('assets/krokf.png', 'KROKFJORDEN',
                              'Pengait dengan plastik isap ...', 'Rp99.000'),
                          SizedBox(
                            width: 24,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Alex() ));
                            },
                              child: products(
                                  'assets/alex.png',
                                  'ALEX/LAGKAPTEN',
                                  'Meja, hijau muda/putih, 120x60 cm',
                                  'Rp1,909.000')),
                          SizedBox(
                            width: 24,
                          ),
                          products(
                              'assets/fardal.png',
                              'FARDAL/PAX',
                              'Kombinasi lemari pakaian, putih/hig...',
                              'Rp8.400.000'),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    header('Telusuri Koleksi Kami'),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        collection(0xff4F707F, 'assets/blav.png', 'BLÅVINGAD',
                            'Koleksi yang \nterinspirasi dari lautan untuk menciptakan ...'),
                        collection(
                            0xff5E4238,
                            'assets/vinterfint.png',
                            'VINTERFINT',
                            'Koleksi VINTERFINT \nhadir dengan warna dan pola indah ...'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                Column(
                  children: [
                    header('Penawaran Terkini'),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/penawaran1.png',
                          width: 200,
                        ),
                        Image.asset(
                          'assets/penawaran2.png',
                          width: 200,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff0058AB),
        selectedFontSize: 12,
        selectedLabelStyle: TextStyle(color: Color(0xff0058AB)),
        unselectedItemColor: Color(0xff1B1B1B),
        unselectedFontSize: 12,
        unselectedLabelStyle: TextStyle(color: Color(0xff6C6C6C)),
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
          myIndex = index;
            
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken_outlined),
            label: 'Inspirasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee_outlined),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Container collection(int colorCollect, String imageCollect,
      String titleCollect, String desCollect) {
    return Container(
      width: 200,
      decoration: BoxDecoration(color: Color(colorCollect)),
      child: Column(
        children: [
          Image.asset(imageCollect),
          // SizedBox(height: 12,),
          Padding(
            padding:
                const EdgeInsets.only(top: 12, right: 13, left: 12, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleCollect,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  desCollect,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white70),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row header(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff1B1B1B)),
        ),
        Text(
          'Lihat Semua',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xff0058AB)),
        )
      ],
    );
  }

  Container products(String imageProduk, String namaProduk, String desProduk,
      String hargaProduk) {
    return Container(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageProduk),
          SizedBox(
            height: 12,
          ),
          Text(
            namaProduk,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff1B1B1B),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            desProduk,
            style: TextStyle(
                fontWeight: FontWeight.w400, color: Color(0xff6C6C6C)),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            hargaProduk,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff1B1B1B),
            ),
          )
        ],
      ),
    );
  }

  Container categories(String image, String text) {
    return Container(
      width: 133,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          SizedBox(
            height: 6,
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xff1B1B1B),
            ),
          )
        ],
      ),
    );
  }
}
