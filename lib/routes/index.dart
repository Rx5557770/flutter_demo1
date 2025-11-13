import 'package:demo/pages/Card.dart';
import 'package:demo/pages/Catgory.dart';
import 'package:demo/pages/Home.dart';
import 'package:demo/pages/Login.dart';
import 'package:demo/pages/Main.dart';
import 'package:demo/pages/Mine.dart';
import 'package:flutter/material.dart';

Widget getRootWidget() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: getRoutes(),
  );
}

Map<String, Widget Function(BuildContext)> getRoutes() {
  return {'/': (context) => MainPage(), '/login': (context) => loginPage()};
}
