import 'package:coco_catalog/screens/home_page.dart';
import 'package:coco_catalog/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      title: 'Coco Catalog',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage()
      },
    );
  }
}
