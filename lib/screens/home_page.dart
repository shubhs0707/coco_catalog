import 'package:coco_catalog/models/catalog.dart';
import 'package:coco_catalog/widgets/drawer.dart';
import 'package:coco_catalog/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) => ItemWidget(
            item: dummyList[index],
          ),
        ),
      ),
    );
  }
}
