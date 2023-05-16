import 'package:ecommerce_application/dashboard/CategoryList.dart';
import 'package:ecommerce_application/dashboard/Header.dart';
import 'package:ecommerce_application/dashboard/PopularProduct.dart';
import 'package:ecommerce_application/dashboard/SpecialProduct.dart';
import 'package:ecommerce_application/dashboard/advertisement.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding:
              EdgeInsets.only(left: 0.0, top: 60.0, right: 0.0, bottom: 0.0),
          child: SingleChildScrollView(
            child: Column(children: [
              Header(),
              Advertisement(),
              CategoryList(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, top: 0.0, right: 8.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Special For You"), Text("See more")],
                ),
              ),
              SpecialProduct(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, top: 0.0, right: 8.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Popular Product"), Text("See more")],
                ),
              ),
              PopularProduct()
            ]),
          ),
        ),
      ),
    );
  }
}
