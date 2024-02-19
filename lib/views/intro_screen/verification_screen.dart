// ignore_for_file: prefer_const_constructors

import 'package:demo_application/consts/colors.dart';
import 'package:demo_application/consts/strings.dart';
import 'package:demo_application/consts/utils.dart';
import 'package:demo_application/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: camel_case_types
class verificationScreen extends StatelessWidget {
  const verificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: letsConnect.text.black.fontFamily(bold).make(),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Vx.gray400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Vx.gray400,
                  ),
                ),
                labelText: "Phone Number",
                prefixIcon: Icon(
                  Icons.phone_android_rounded,
                  color: Vx.gray600,
                ),
                prefixText: "+91",
                labelStyle: TextStyle(
                  color: Vx.gray600,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            10.heightBox,
            otp.text.size(16).make(),
            Spacer(),
            SizedBox(
              width: context.screenWidth - 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: bgColor,
                  padding: EdgeInsets.all(16),
                ),
                onPressed: (() {
                  Get.to(() => homeScreen());
                }),
                child: continueText.text.size(18).white.semiBold.make(),
              ),
            ),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
