// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:demo_application/consts/colors.dart';
import 'package:demo_application/views/home_screen/components/tabBar.dart';
import 'package:demo_application/views/home_screen/components/tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:demo_application/views/home_screen/components/appbar.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: bgColor,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        backgroundColor: bgColor,
        body: Column(
          children: [
            appBar(),
            Expanded(
              child: Row(
                children: [
                  tabBar(),
                  tabBarView(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
