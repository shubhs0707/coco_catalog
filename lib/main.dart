import 'package:coco_catalog/screens/home_page.dart';
import 'package:coco_catalog/screens/login_page.dart';
import 'package:coco_catalog/utils/routes.dart';
import 'package:coco_catalog/utils/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      title: 'Coco Catalog',
      initialRoute: MyRoutes.homepageRoute,
      routes: {
        MyRoutes.homepageRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
