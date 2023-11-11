// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names
import 'package:flutter/material.dart';

class Alex extends StatefulWidget{
  @override
  State<Alex> createState() => _AlexState();
}

class _AlexState extends State<Alex> {
  bool liked = true;
  var Count =1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Color(0xff1B1B1B),)),
          title: Text('ALEX/LAGKAPTEN',style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff1B1B1B)
          ),),
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
                Icons.share,
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
                    Image.asset('assets/headpic.png'),
                    SizedBox(height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/1.png',width: 71,),
                        SizedBox(width: 15,),
                        Image.asset('assets/2.png',width: 71,),
                        SizedBox(width: 15,),
                        Image.asset('assets/3.png',width: 71,),
                        SizedBox(width: 15,),
                        Image.asset('assets/4.png',width: 71,),
                        SizedBox(width: 15,),
                        Image.asset('assets/5.png',width: 71,),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ALEX/LAGKAPTEN',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1B1B1B)
                        ),),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              liked = !liked;
                            });
                          },
                        child: liked
                          ? Image.asset('assets/hatiHitam.png')
                          : Image.asset('assets/hatiMerah.png'),
                      )
                      ],
                    ),
                    SizedBox(height: 12,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Meja, hijau muda/putih, 120x60 cm',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6C6C6C)
                        ),),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Rp1.909.000',style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1B1B1B)
                        ),),
                      ],
                    ),
                    SizedBox(height: 11,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star,color: Color(0xffFBD914),size: 15,),
                        Icon(Icons.star,color: Color(0xffFBD914),size: 15,),
                        Icon(Icons.star,color: Color(0xffFBD914),size: 15,),
                        Icon(Icons.star,color: Color(0xffFBD914),size: 15,),
                        Icon(Icons.star,color: Color(0xffFBD914),size: 15,),
                        SizedBox(width: 6,),
                        Text('4.5 | Terjual 116',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6C6C6C)
                        ),),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Flexible(
                      child: Text('Ruang terbatas bukan berarti Anda harus menolak belajar atau bekerja dari rumah. Meja ini memakan sedikit ruang lantai namun masih memiliki unit laci tempat Anda dapat menyimpan kertas dan barang penting lainnya.',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff1B1B1B)
                      ),),
                    ),
                  ],
                ),
                    SizedBox(height: 200,),
                  ],
                ),
              ),
            ],
          ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 130,
                height: 56,
                
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xffE7E7E7)), // Perbaikan di sini
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              GestureDetector(
                onTap: () {
                  if (Count > 1) {
                    setState(() {
                      Count -= 1;
                    });
                  }
                },
                child: Icon(Icons.remove, color: Color(0xffB4B4B4)),
              ),
              SizedBox(width: 16),
              Text('$Count', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              SizedBox(width: 16),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Count += 1;
                  });
                },
                child: Icon(Icons.add, color: Color(0xff0058AB)),
              ),
              ],
            ),
          ),
        ),
        TextButton(
                onPressed: () {},
                child: Container(
                  height: 56,
                  width: 240,
                  decoration: BoxDecoration(
                    color: Color(0xff0058AB),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 35),
                    child: Center(
                      child: Text('Tambah ke Keranjang',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}