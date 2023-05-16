import 'package:ecommerce_application/dashboard/CategoryListModal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});
  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
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
        height: 110.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          padding: const EdgeInsets.only(
                              left: 0.0, top: 20.0, right: 0.0, bottom: 20.0),
                          decoration: BoxDecoration(
                              color: Colors.orange.shade200,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: SvgPicture.asset(cateList[index].image),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          cateList[index].title,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 14),
                        ),
                        // Image.asset(cateList[index].image),
                      ],
                    ),
                  ));
            }),
            itemCount: cateList.length));
  }
}
