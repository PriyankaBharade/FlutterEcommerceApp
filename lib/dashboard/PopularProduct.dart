import 'package:ecommerce_application/dashboard/CategoryListModal.dart';
import 'package:ecommerce_application/dashboard/ProductListModal.dart';
import 'package:flutter/material.dart';

class PopularProduct extends StatefulWidget {
  const PopularProduct({super.key});

  @override
  State<PopularProduct> createState() => _PopularProductState();
}

class _PopularProductState extends State<PopularProduct> {
  List<ProductListModal> proList = List.of(<ProductListModal>[]);
  List<CategoryListModal> cateList = List.of(<CategoryListModal>[]);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    proList = getProduct();
    cateList = getCategory();
    print("Popular Product" + cateList.length.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 220.0,
      //child: Image.asset("assets/imagebanner1.png"),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return Container(
              child: Column(
                children: [
                  // Text("Hellooooo User"),
                  Image.asset("assets/ImagePopularProduct1.png",
                      height: 220, width: 140)
                ],
              ),
            );
          }),
          itemCount: proList.length),
    );
  }
}
