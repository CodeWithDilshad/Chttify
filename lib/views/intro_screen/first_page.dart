// ignore_for_file: prefer_const_constructors

import 'package:demo_application/consts/colors.dart';
import 'package:demo_application/consts/images.dart';
import 'package:demo_application/consts/strings.dart';
import 'package:demo_application/consts/utils.dart';
import 'package:demo_application/views/intro_screen/verification_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    logo,
                    width: 120,
                  ),
                  appname.text.fontFamily(bold).size(28).make(),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 5.0,
                    runSpacing: 10.0,
                    children: List.generate(
                      listOfFeatures.length,
                      (index) {
                        return Chip(
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 4,
                          ),
                          backgroundColor: Colors.transparent,
                          side: BorderSide(
                            color: Vx.gray600,
                          ),
                          label: listOfFeatures[index].text.semiBold.make(),
                        );
                      },
                    ),
                  ),
                  20.heightBox,
                  slogan.text.bold.size(38).fontFamily(bold).gray600.make(),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: context.screenWidth - 80,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        padding: EdgeInsets.all(16),
                        backgroundColor: bgColor,
                      ),
                      onPressed: () {
                        Get.to(
                          () => verificationScreen(),
                          transition: Transition.downToUp,
                        );
                      },
                      child: cont.text.white.semiBold.size(16).make(),
                    ),
                  ),
                  10.heightBox,
                  poweredby.text.size(15).gray600.make()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
