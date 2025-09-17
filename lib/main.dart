import 'package:flutter/material.dart';
import 'package:start_app/counter/counter_screen.dart';
import 'package:start_app/slider_image/slider_image.dart';
import 'package:start_app/xoGame/LoginScreen.dart';
import 'package:start_app/xoGame/xoGame.dart';

import 'calculatorScreen/calculatorScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        XoGame.routeName: (context) => XoGame(),
        LoginScreen.routeName: (context) => LoginScreen(),
      },
    );
  }
}