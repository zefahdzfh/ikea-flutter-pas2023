// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

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