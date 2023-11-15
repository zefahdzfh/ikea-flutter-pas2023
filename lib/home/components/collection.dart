// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

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