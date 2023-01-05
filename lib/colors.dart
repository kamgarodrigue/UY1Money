// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';

const Color RED_COLOR = Color.fromRGBO(254, 2, 2, 1);
const Color GRAY_COLOR = Color.fromRGBO(239, 229, 229, .62);
const Color WHITE_COLOR = Color(0XffFFFFFF);
const Color violet_COLOR = Color.fromRGBO(113, 51, 192, .62);
const Color violetlight_COLOR = Color.fromRGBO(79, 58, 141, .2);
const Color Black_COLOR = Color.fromRGBO(0, 0, 0, 1);
const Color BG_COLOR = Color.fromARGB(255, 20, 18, 1);
const Color Blue_COLOR = Color.fromRGBO(36, 0, 255, 1);

const Gradient bg = LinearGradient(
  colors: [
    Color.fromRGBO(96, 68, 206, 1),
    Color.fromRGBO(104, 68, 207, 1),
    Color.fromRGBO(190, 68, 210, 1),
  ],
);
/*
Scaffold(
      backgroundColor: BG_COLOR,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: BG_COLOR,
        leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/Vector.png",
              height: 17,
            )),
        actions: [
          Image.asset(
            "assets/icons/Vector (2).png",
            height: 2,
          )
        ],
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(),
          children: [
            Text(
              "Total Balance",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: GRAY_COLOR, fontSize: 13, fontFamily: "Poppins-light"),
            ),
            Text(
              "\$3,851.59",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: WHITE_COLOR, fontSize: 32, fontFamily: "Poppins-bold"),
            ),
            Card(
              child: Container(
                height: 219,
              ),
            )
          ],
        ),
      ),
    );
*/
