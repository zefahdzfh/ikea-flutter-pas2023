// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, prefer_is_empty
import 'package:flutter/material.dart';
import 'package:ikea_pas2023/wishlist/wishlist.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:intl/intl.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

String formatRupiah(int harga) {
  final currencyFormat =
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
  return currencyFormat.format(harga);
}

class _CartState extends State<Cart> {
  var P1Count = 1;
  int P1Price = 1350000;

  var P2Count = 1;
  int P2Price = 1499000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                LucideIcons.arrowLeft,
                color: Color(0xff1B1B1B),
              )),
          title: Text(
            'Keranjang',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff1B1B1B)),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Wishlist()));
              },
              icon: Icon(
                LucideIcons.heart,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '2',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1B1B1B)),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Barang',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6C6C6C)),
                        ),
                      ],
                    ),
                    Icon(LucideIcons.list),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/alex2.png',
                        width: 100,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ALEX',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xff1B1B1B))),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Unit laci, abu-abu toska,\n36x70 cm',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff6C6C6C))),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            formatRupiah(P1Price * P1Count),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xff1B1B1B)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Color(
                                          0xffE7E7E7)), // Perbaikan di sini
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 9, horizontal: 26),
                                  child: Icon(
                                    LucideIcons.trash2,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                width: 185,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Color(
                                          0xffE7E7E7)), // Perbaikan di sini
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 9),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          if (P1Count > 1) {
                                            setState(() {
                                              P1Count -= 1;
                                            });
                                          }
                                        },
                                        child: Icon(LucideIcons.minus,
                                            size: 20, color: Color(0xffB4B4B4)),
                                      ),
                                      SizedBox(width: 16),
                                      Text('$P1Count',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                      SizedBox(width: 16),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            P1Count += 1;
                                          });
                                        },
                                        child: Icon(LucideIcons.plus,
                                            size: 20, color: Color(0xff0058AB)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/mack.png',
                        width: 100,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('MACKAPÄR',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xff1B1B1B))),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Kabinet/tempat sepatu, putih,\n80x35x102 cm',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff6C6C6C))),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            formatRupiah(P2Price * P2Count),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xff1B1B1B)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Color(
                                          0xffE7E7E7)), // Perbaikan di sini
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 9, horizontal: 26),
                                  child: Icon(
                                    LucideIcons.trash2,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                width: 185,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Color(
                                          0xffE7E7E7)), // Perbaikan di sini
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 9),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          if (P2Count > 1) {
                                            setState(() {
                                              P2Count -= 1;
                                            });
                                          }
                                        },
                                        child: Icon(LucideIcons.minus,
                                            size: 20, color: Color(0xffB4B4B4)),
                                      ),
                                      SizedBox(width: 16),
                                      Text('$P2Count',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                      SizedBox(width: 16),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            P2Count += 1;
                                          });
                                        },
                                        child: Icon(LucideIcons.plus,
                                            size: 20, color: Color(0xff0058AB)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 104,
        child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total',style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff6C6C6C)
                    ),),
                    SizedBox(height: 6,),
                    Text(formatRupiah(P1Price*P1Count+P2Price*P2Count),style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xff1B1B1B)
                    ),)
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 56,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xff0058AB),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 76),
                      child: Center(
                        child: Text(
                          'Beli',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
      )
    );
  }
}
