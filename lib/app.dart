//app.dart

import 'package:flutter/material.dart';
import 'package:tsitatnik/home_screen.dart';

class TsitatnikApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote Bliss',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'SF Pro Display', // Шрифт по умолчанию для iOS
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, // Цвет фона AppBar
          titleTextStyle: TextStyle(
            color: Colors.black, // Цвет текста заголовка AppBar
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
