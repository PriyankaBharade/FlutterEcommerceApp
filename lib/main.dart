import 'package:ecommerce_application/dashboard/home.dart';
import 'package:ecommerce_application/pages/login_page.dart';
import 'package:ecommerce_application/silder/SlideWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SlideWidget(),
    theme: ThemeData(primarySwatch: Colors.purple),
    routes: {"/home": (context) => Home(), "/login": (context) => LoginPage()},
  ));
}
