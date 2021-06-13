import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coco Catalog',
      home: Scaffold(
        body: Center(
          child: Text(
            'Welcome to 30 days of flutter',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
