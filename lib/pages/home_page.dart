import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../drawer.dart';
import '../name_card_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //var myText="Change my name ";
  //TextEditingController _nameController=TextEditingController();
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // fetchData();
  }
  // fetchData()async
  // {
  //   var res= await http.get(Uri.parse(url));
  //   data=jsonDecode(res.body);
  //   setState((){});
  //   print(data);

  // }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              },
            )
          : Center(child: CircularProgressIndicator()),
      /*Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Container(
            color: Colors.indigoAccent,
            width: 100,height: 100,
          ),
          Container(
            color: Colors.indigoAccent,
            width: 100,height: 100,
          ),
          Container(
            color: Colors.indigoAccent,
            width: 100,height: 100,
          ),
        ],
      ),*/
      /*Center(
        */ /*child: Container(
          color: Colors.indigoAccent,
          width: 100, height: 100,
        ),*/ /*

      */ /*    child: Padding(
            padding: const EdgeInsets.all(16.0),
          */ /**/ /*  child: SingleChildScrollView(
              child: NameCardWidget(myText: myText, nameController: _nameController),
            ),*/ /**/ /*
          )*/ /*
      ),*/
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText=_nameController.text;
          setState(() {});
        },
        /*child: Icon(Icons.send),*/
      ),
    );
  }
}
