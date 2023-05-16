import 'package:ecommerce_application/pages/profile_page.dart';
import 'package:ecommerce_application/profile/profile.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Image.asset("./assets/ImagePopularProduct1.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.deepOrange, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("./assets/ps4_console_white_2.png",
                        width: 60, height: 60),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.deepOrange, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("./assets/ps4_console_white_2.png",
                        width: 60, height: 60),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.deepOrange, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("./assets/ps4_console_white_2.png",
                        width: 60, height: 60),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.deepOrange, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("./assets/ps4_console_white_2.png",
                        width: 60, height: 60),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20, left: 0, right: 0, bottom: 0),
              child: const Text("Wireless Controller FOr PS4",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30, right: 10),
              child: const Text(
                  "Wireless Controller for PS4 gives you what you want in your gaming from over precious control your games to sharing",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 10),
              child: const Text("See More Details",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.deepOrange)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                height: 30,
                                width: 30,
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.deepOrange, width: 2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.blueGrey,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        ),
                                      ),
                                    ))),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.deepOrange,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.pink,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                        ),
                                      )))),
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.deepOrange,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.purple,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                        ),
                                      )))),
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.deepOrange,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                        ),
                                      )))),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.deepOrange,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: const Text("-",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepOrange)),
                                      )))),
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.deepOrange,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: const Text("1",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepOrange)),
                                      )))),
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.deepOrange,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: const Text("+",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.deepOrange)),
                                      )))),
                        ])),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Add To Cart"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(), backgroundColor: Colors.deepOrange),
              ),
            ),
          ],
        ));
  }
}
