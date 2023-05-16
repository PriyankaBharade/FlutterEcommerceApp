import 'package:ecommerce_application/dashboard/home.dart';
import 'package:ecommerce_application/pages/login_page.dart';
import 'package:ecommerce_application/silder/SlideList.dart';
import 'package:flutter/material.dart';

class SlideWidget extends StatefulWidget {
  const SlideWidget({super.key});

  @override
  State<SlideWidget> createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget> {
  List<SlideList> slides = List.of(<SlideList>[]);
  int currentIndex = 0;
  PageController _controller = PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState
    _controller = PageController(initialPage: 0);
    slides = getSlides();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text(""),
        // ),
        body: Column(children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: slides.length,
                itemBuilder: (context, index) {
                  // contents of slider
                  return Slider(
                      image: slides[index].getImage(),
                      title: slides[index].getTitle(),
                      desc: slides[index].getDescription());
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                slides.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: ElevatedButton(
              child:
                  Text(currentIndex == slides.length - 1 ? "Continue" : "Next"),
              onPressed: () {
                if (currentIndex == slides.length - 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }
                _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn);
              },
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), backgroundColor: Colors.deepOrange),
            ),
          ),
          // Container(
          //   height: 60,
          //   margin: EdgeInsets.all(40),
          //   width: double.infinity,
          //   // child: ElevatedButton(
          //   //   onPressed: () {
          //   //     if (currentIndex == slides.length - 1) {
          //   //       Navigator.pushNamed(context, "/home");
          //   //     }
          //   //   },
          //   //   child: Text(
          //   //       currentIndex == slides.length - 1 ? "Continue" : "Next"),
          //   //   style: ElevatedButton.styleFrom(
          //   //       shape: StadiumBorder(), backgroundColor: Colors.deepOrange),
          //   // )
          //   child: MaterialButton(
          //     child:
          //         Text(currentIndex == slides.length - 1 ? "Continue" : "Next"),
          //     onPressed: () {
          //       if (currentIndex == slides.length - 1) {
          //         Navigator.pushReplacement(
          //           context,
          //           MaterialPageRoute(builder: (context) => Home()),
          //         );
          //       }
          //       _controller.nextPage(
          //           duration: Duration(milliseconds: 100),
          //           curve: Curves.bounceIn);
          //     },
          //     textColor: Colors.orange,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(25),
          //     ),
          //   ),
          // ),
        ]),
      ),
    );
  }
}

Container buildDot(int index, BuildContext context) {
  return Container(
    height: 10,
    width: 25,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.orangeAccent,
    ),
  );
}

class Slider extends StatelessWidget {
  String image = "";
  String title = "";
  String desc = "";

  Slider({required this.image, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Color.fromARGB(255, 173, 118, 36),
                  fontFamily: 'muli',
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Text(desc),
            Image.asset(image, width: 300, height: 300),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
