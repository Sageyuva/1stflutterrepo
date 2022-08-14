import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:matcher/matcher.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl="https://i.pinimg.com/474x/3f/ff/58/3fff5832e236da38dc6e9d4dbae0332b.jpg";
    return Drawer(
      child: Container(
        color:Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
              ),
              child: UserAccountsDrawerHeader
              (
                currentAccountPicture:CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ) ,
              accountEmail: Text("yuvarajdhammure@gmail.com"),
              accountName:Text("YUVARAJ DHAMMURE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),) ,
              ),
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile",textScaleFactor: 1.5,),
             ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(CupertinoIcons.home,
              // color: Colors.white,
              ),
              title: Text("Home",
              textScaleFactor: 1.5,
              // style: TextStyle(
              //   fontSize: 23,
              //   fontWeight: FontWeight.bold,
              //   // color: Colors.white,
              // ),
              ),
             ),
             ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(CupertinoIcons.phone),
              title: Text("7975139615",textScaleFactor: 1.5,),
             ),
             ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(CupertinoIcons.mail),
              title: Text("yuvarajdhammure@gmail.com",textScaleFactor: 1.0,),
             )
          ],
        ),
      ),
    );
  }
}   