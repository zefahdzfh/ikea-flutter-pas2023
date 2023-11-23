// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Inspiration extends StatefulWidget {
  // const Inspiration({Key? key}) :super(key: key)
  @override
  State<Inspiration> createState() => _InspirationState();
}

class _InspirationState extends State<Inspiration> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leadingWidth: 500,
            backgroundColor: Colors.transparent,
            title: Text(
              'Temukan Inspirasi',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1B1B1B)),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  LucideIcons.search,
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
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.only(left: 0, right: 140),
                child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Color(0xff0058AB),
                    labelColor: Color(0xff1B1B1B),
                    unselectedLabelColor: Color(0xff6C6C6C),
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    tabs: [
                      Tab(
                        text: 'Inspirasi',
                      ),
                      Tab(
                        text: 'Koleksi',
                      ),
                      Tab(
                        text: 'Edukasi',
                      ),
                    ]),
              ),
            ),
          ),
          //
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: ListView(
                children: [
                  Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            categories(0, 'Semua'),
                            SizedBox(
                              width: 16,
                            ),
                            categories(1, 'Ruang Kerja'),
                            SizedBox(
                              width: 16,
                            ),
                            categories(2, 'Dapur'),
                            SizedBox(
                              width: 16,
                            ),
                            categories(3, 'Ruang Keluarga'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          articles(
                              'assets/11.png', 'Hunian compact yang nyaman'),
                          SizedBox(
                            width: 16,
                          ),
                          articles('assets/22.png',
                              'Lakukan 5 hal ini agar sepatumu bebas ...'),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Image.asset('assets/33.png'),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Hadirkan nuasa elegant dan fancy kedalam kamar tidur anda',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1B1B1B)),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          articles('assets/44.png',
                              'Rumah lebih sehat dengan set tempat ...'),
                          SizedBox(
                            width: 16,
                          ),
                          articles('assets/55.png',
                              'Membuat kamar anak rapi jadi lebih mudah'),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ],
              ),
            ),
            ///////////////////
            //koleksi
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: 100,),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 130,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/42.png'),
                        Image.asset('assets/01.png'),
                        Image.asset('assets/41.png')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ouchh...',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 32,
                            color: Color(0xff1B1B1B)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Kami Memohon Maaf Karena Halaman Ini \nTidak Bisa Diakses Untuk Sementara Waktu',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xff1B1B1B)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Silahkan Kembali Ke Beranda Untuk Mewujudkan \nFurnitur Rumah Impian Anda...',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff6C6C6C)),
                      ),
                      // SizedBox(
                      //   height: 16,
                      // ),
                      // TextButton(
                      //   onPressed: () {},
                      //   child: Container(
                      //     height: 50,
                      //     width: 300,
                      //     decoration: BoxDecoration(
                      //       color: Color(0xff0058AB),
                      //     ),
                      //     child: Padding(
                      //       padding: const EdgeInsets.symmetric(
                      //           vertical: 10, horizontal: 10),
                      //       child: Center(
                      //         child: Row(
                      //           children: [
                      //             Icon(LucideIcons.arrowLeft,color: Colors.white,),
                      //             SizedBox(width: 24,),
                      //             Text(
                      //               'Kembali Ke Beranda',
                      //               style: TextStyle(
                      //                   fontSize: 16,
                      //                   fontWeight: FontWeight.w500,
                      //                   color: Colors.white),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ],
              ),
            ),
            //koleksi

            //edukasi
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: 100,),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 130,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/4 4.png'),
                        Image.asset('assets/02.png'),
                        Image.asset('assets/45.png')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ouchh...',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 32,
                            color: Color(0xff1B1B1B)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Kami Memohon Maaf Karena Halaman Ini \nTidak Bisa Diakses Untuk Sementara Waktu',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xff1B1B1B)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Silahkan Kembali Ke Beranda Untuk Mewujudkan \nFurnitur Rumah Impian Anda...',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff6C6C6C)),
                      ),
                      // SizedBox(
                      //   height: 16,
                      // ),
                      // TextButton(
                      //   onPressed: () {},
                      //   child: Container(
                      //     height: 50,
                      //     width: 300,
                      //     decoration: BoxDecoration(
                      //       color: Color(0xff0058AB),
                      //     ),
                      //     child: Padding(
                      //       padding: const EdgeInsets.symmetric(
                      //           vertical: 10, horizontal: 10),
                      //       child: Center(
                      //         child: Row(
                      //           children: [
                      //             Icon(LucideIcons.arrowLeft,color: Colors.white,),
                      //             SizedBox(width: 24,),
                      //             Text(
                      //               'Kembali Ke Beranda',
                      //               style: TextStyle(
                      //                   fontSize: 16,
                      //                   fontWeight: FontWeight.w500,
                      //                   color: Colors.white),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ],
              ),
            ),
            //edukasi
          ])),
    );
  }

  Container articles(String image, String title) {
    return Container(
      width: 200,
      child: Column(
        children: [
          Image.asset(
            image,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff1B1B1B)),
          )
        ],
      ),
    );
  }

  GestureDetector categories(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color:
                selectedIndex == index ? Color(0xff0058AB) : Colors.transparent,
            border: Border.all(
                color: selectedIndex == index
                    ? Colors.transparent
                    : Color(0xffe7e7e7))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontWeight:
                    selectedIndex == index ? FontWeight.w500 : FontWeight.w400,
                color:
                    selectedIndex == index ? Colors.white : Color(0xff1B1B1B)),
          ),
        ),
      ),
    );
  }
}
