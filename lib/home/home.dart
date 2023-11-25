// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ikea_pas2023/product_detail/alex.dart';
import 'package:ikea_pas2023/home/components/categories.dart';
import 'package:ikea_pas2023/home/components/collection.dart';
import 'package:ikea_pas2023/home/components/header.dart';
import 'package:ikea_pas2023/home/components/products.dart';
import 'package:ikea_pas2023/inspiration/inspiration.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Inspiration(),
    // Tambahkan halaman-halaman lainnya di sini
  ];
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
                LucideIcons.bell,
                color: Color(0xff1B1B1B),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                LucideIcons.shoppingCart,
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
                            LucideIcons.search,
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Alex()));
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
    );
  }

  

  

  
  
}
