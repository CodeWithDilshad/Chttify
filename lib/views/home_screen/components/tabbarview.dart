// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo_application/views/home_screen/components/chats.dart';
import 'package:flutter/material.dart';

Widget tabBarView() {
  return Expanded(
    child: Container(
      margin: EdgeInsets.only(bottom: 8),
      child: TabBarView(children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
            ),
          ),
          child: chatsComponent(),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
            ),
          ),
        ),
      ]),
    ),
  );
}
