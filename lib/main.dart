// ignore_for_file: prefer_const_constructors

import 'package:demo_application/consts/strings.dart';
import 'package:demo_application/views/intro_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
 
main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark),
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "lato"),
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
      title: appname,
    );
  }
}

