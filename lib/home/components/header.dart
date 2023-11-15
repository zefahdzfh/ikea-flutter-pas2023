// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
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