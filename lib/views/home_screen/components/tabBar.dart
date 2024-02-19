// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo_application/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget tabBar() {
  return Container(
    child: RotatedBox(
      quarterTurns: 3,
      child: TabBar(
        indicator: BoxDecoration(),
        labelColor: Colors.white,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: Vx.gray400,
        tabs: [
          Tab(
            text: chats,
          ),
          Tab(
            text: status,
          ),
          Tab(
            text: camera,
          ),
        ],
      ),
    ),
  );
}
