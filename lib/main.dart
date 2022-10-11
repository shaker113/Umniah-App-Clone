import 'package:flutter/material.dart';
import 'package:umniah/data/data.dart';
import 'package:umniah/screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: umniahColor),
      ),
      home: const homePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
