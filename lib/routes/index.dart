import 'package:demo/pages/Card.dart';
import 'package:demo/pages/Catgory.dart';
import 'package:demo/pages/Home.dart';
import 'package:demo/pages/Main.dart';
import 'package:demo/pages/Mine.dart';
import 'package:flutter/material.dart';

Widget getRootWidget() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: getRoutes(),
  );
}

Map<String, Widget Function(BuildContext)> getRoutes() {
  return {
    '/': (context) => MainPage(),
    // '/Catgory': (context) => CatgoryPage(),
    // '/Card': (context) => CardPage(),
    // '/Mine': (context) => MinePage()
  };
}
