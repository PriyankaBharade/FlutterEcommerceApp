import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          width: 260,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                    hintText: "Search", border: InputBorder.none)),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(50.0)),
          // child: const Icon(Icons.shopping_cart_outlined),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, left: 25, right: 0.0, bottom: 0.0),
                  child: Container(
                      width: 15,
                      height: 15,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ))),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, left: 0, right: 0.0, bottom: 5.0),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                  )),
            ],
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(50.0)),
          child: const Icon(Icons.notification_important_outlined),
        )
      ],
    );
  }
}
