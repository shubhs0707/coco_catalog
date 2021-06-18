import 'package:coco_catalog/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 10;
    String name = 'Shubham';
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text(
          'Welcome to $days days of flutter - $name',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
