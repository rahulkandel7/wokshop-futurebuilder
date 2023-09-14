import 'package:day1/screens/fetch.dart';
import 'package:day1/screens/navbar.dart';
import 'package:flutter/material.dart';

void main() {

// demo
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workshop',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Fetch(),
      debugShowCheckedModeBanner: false,
    );
  }
}
