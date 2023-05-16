import 'package:ecommerce_application/dashboard/CategoryListModal.dart';
import 'package:ecommerce_application/details/product_detail.dart';
import 'package:flutter/material.dart';

class SpecialProduct extends StatefulWidget {
  const SpecialProduct({super.key});

  @override
  State<SpecialProduct> createState() => _SpecialProductState();
}

class _SpecialProductState extends State<SpecialProduct> {
  List<CategoryListModal> cateList = List.of(<CategoryListModal>[]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cateList = getCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 140.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return GestureDetector(
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      width: 280.0,
                      height: 140.0,
                      decoration: BoxDecoration(
                          color: Colors.orange.shade200,
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: AssetImage("assets/imagebanner1.png"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.darken,
                              ))),
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Smart Phone",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text("18 brands",
                                  style: TextStyle(color: Colors.white))
                            ],
                          )),
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetails()));
                },
              );
            }),
            itemCount: cateList.length));
  }
}
