import 'package:flutter/material.dart';
import 'Profile.dart';
import 'Home.dart';
import 'Video.dart';
class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff1a322b),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()))},
          ),
          Divider(
            height: 2,
            thickness: 2,
            color: Colors.black,
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()))},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('Video'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=>Video()))},
          ),

        ],
      ),
    );
  }
}
