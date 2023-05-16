import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          /*DrawerHeader(child:
            Text("Drawer") ,
            decoration: BoxDecoration(color : Colors.deepOrangeAccent),
            )*/
          UserAccountsDrawerHeader(
            accountName: Text("SatishKumar"),
            accountEmail: Text("satti507@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Satish Kumar"),
            subtitle: Text("Android"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Satish "),
            subtitle: Text("ios"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text(" Kumar"),
            subtitle: Text("web"),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
