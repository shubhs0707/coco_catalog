import 'dart:convert';

import 'package:coco_catalog/models/catalog.dart';
import 'package:coco_catalog/utils/themes.dart';
import 'package:coco_catalog/widgets/home_widgets/catalog_header.dart';
import 'package:coco_catalog/widgets/home_widgets/catalog_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    loadData();
    super.initState();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString('assets/files/catalog.json');
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m12,
          child: Column(
            children: [
              CatalogHeader(),
              if (CatalogModel.items.isEmpty)
                CircularProgressIndicator().centered().expand()
              else
                CatalogList().py12().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
