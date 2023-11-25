import 'package:flutter/material.dart';

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