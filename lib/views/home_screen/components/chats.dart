// ignore_for_file: prefer_const_constructors

import 'package:demo_application/consts/colors.dart';
import 'package:demo_application/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget chatsComponent() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: ListView.builder(
      itemCount: 20,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: bgColor,
            child: Image.asset(
              userImg,
              color: Colors.white,
            ),
          ),
          title: "Dummy Name".text.size(16).semiBold.make(),
          subtitle: "Message here..".text.make(),
          trailing: "Last Seen".text.gray400.make(),
        );
      },
    ),
  );
}
