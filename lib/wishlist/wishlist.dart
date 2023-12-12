// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, prefer_is_empty
import 'package:flutter/material.dart';
import 'package:ikea_pas2023/cart.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:ikea_pas2023/wishlist/components/wishlist_model.dart';

class Wishlist extends StatefulWidget {
  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  static List<ProductsModel> list_products = [
    ProductsModel(
      'ALEX',
      'Unit laci, abu-abu toska, 36x70 cm',
      'Rp1.350.000',
      'assets/alex2.png',
    ),
    ProductsModel(
      'MILLBERGET ',
      'Kursi putar, murum hitam',
      'Rp1.799.000',
      'assets/mill.png',
    ),
    ProductsModel(
      'SONGESAND ',
      'Rngk tmpt tdr dg 2 ktk penyimpanan, \ncokelat, 160x200 cm',
      'Rp3.499.000',
      'assets/songe.png',
    ),
    ProductsModel(
      'HEKTAR ',
      'Lampu lantai, abu-abu tua',
      'Rp1.299.000',
      'assets/hektar.png',
    ),
  ];
  List<ProductsModel> display_products = List.of(list_products);
  TextEditingController searchController = TextEditingController();

  void UpdateListProducts(String value) {
    setState(() {
      display_products = list_products
          .where((element) =>
              element.productName.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Wishlist',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff1B1B1B)),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              icon: Icon(
                LucideIcons.shoppingCart,
                color: Color(0xff1B1B1B),
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(children: [
          Container(
            height: 48,
            decoration:
                BoxDecoration(border: Border.all(color: Color(0xffE7E7E7))),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: TextField(
                controller: searchController,
                onChanged: (value) => UpdateListProducts(value),
                style: TextStyle(color: Color(0xff1B1B1B), fontSize: 16),
                decoration: InputDecoration(
                    icon: Icon(
                      LucideIcons.search,
                      color: Color(0xff1B1B1B),
                    ),
                    hintText: 'Cari barang diwishlist',
                    hintStyle:
                        TextStyle(color: Color(0xff6C6C6C), fontSize: 16),
                    border: InputBorder.none),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    display_products.length.toString(),
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
          Expanded(
            child: display_products.length == 0
                ? ListView(
                    children: [
                      Center(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            SizedBox(
                              height: 100,
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width,
                              height: 130,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/45.png'),
                                  Image.asset('assets/02.png'),
                                  Image.asset('assets/4 4.png')
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
                                  'Item Yang Anda Cari Tidak Tersedia Dalam Wishlist',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Color(0xff1B1B1B)),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Silahkan Kembali Ke Beranda Dan Ketuk "Tambahkan Ke Wishlist" Untuk Produk yang Anda Sukai',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xff6C6C6C)),
                                ),
                              ],
                            ),
                          ])),
                    ],
                  )
                : ListView.builder(
                    itemCount: display_products.length,
                    itemBuilder: (context, index) => ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      subtitle: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            display_products[index].productImage,
                            width: 100,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                display_products[index].productName,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1B1B1B)),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                display_products[index].productDesc,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff6C6C6C)),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                display_products[index].productHarga,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1B1B1B)),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Cart()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff0058AB))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 11, horizontal: 50),
                                    child: Text(
                                      'Tambahkan Ke Keranjang',
                                      style: TextStyle(
                                          color: Color(0xff0058AB),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                            ],
                          ),
                          Icon(
                            LucideIcons.moreVertical,
                            color: Color(0xff1B1B1B),
                          )
                        ],
                      ),
                      // trailing: Icon(LucideIcons.moreVertical,color: Color(0xff1B1B1B),),
                    ),
                  ),
          ),
        ]),
      ),
    );
  }
}
