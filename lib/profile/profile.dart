import 'package:ecommerce_application/constants/app_text.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 1,
                      child: SvgPicture.asset("./assets/back_icon.svg")),
                  Expanded(
                      flex: 9,
                      child: Center(
                        child: const Text(
                          "Proile",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(150.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("./assets/profile_image.png"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: SvgPicture.asset("./assets/settings.svg")),
                        Expanded(
                          flex: 8,
                          child: const Text(
                            AppText.my_account,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(80, 75, 75, 1)),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: SvgPicture.asset("./assets/back_icon.svg"))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: SvgPicture.asset("./assets/settings.svg")),
                        Expanded(
                          flex: 8,
                          child: const Text(
                            "Notifications",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(80, 75, 75, 1)),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: SvgPicture.asset("./assets/back_icon.svg"))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: SvgPicture.asset("./assets/settings.svg")),
                        Expanded(
                          flex: 8,
                          child: const Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(80, 75, 75, 1)),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: SvgPicture.asset("./assets/back_icon.svg"))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: SvgPicture.asset("./assets/settings.svg")),
                        Expanded(
                          flex: 8,
                          child: const Text(
                            "Help Center",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(80, 75, 75, 1)),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: SvgPicture.asset("./assets/back_icon.svg"))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: SvgPicture.asset("./assets/settings.svg")),
                        Expanded(
                          flex: 8,
                          child: const Text(
                            "Logout",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(80, 75, 75, 1)),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: SvgPicture.asset("./assets/back_icon.svg"))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
