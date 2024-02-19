// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo_application/consts/colors.dart';
import 'package:demo_application/consts/images.dart';
import 'package:demo_application/consts/strings.dart';
import 'package:demo_application/consts/utils.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget appBar() {
  return Container(
    padding: EdgeInsets.only(right: 12),
    color: Colors.white,
    height: 80,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
          height: 80,
          width: 90,
          child: Icon(
            settingsIcon,
            color: Colors.white,
          ),
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: "$whatsChat\n",
              style: TextStyle(
                fontFamily: bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "             $connectingLives",
              style: TextStyle(
                fontFamily: light,
                fontSize: 16,
                color: Vx.gray600,
                fontWeight: FontWeight.w600,
              ),
            ),
          ]),
        ),
        CircleAvatar(
          backgroundColor: bgColor,
          radius: 25,
          child: Image.asset(
            userImg,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
