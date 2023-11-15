// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
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