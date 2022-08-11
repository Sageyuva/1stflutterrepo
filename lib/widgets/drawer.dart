import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:matcher/matcher.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl="https://i.pinimg.com/474x/00/6a/3b/006a3bdcce01d123d83a54390a4be892.jpg";
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
            )
          ],
        ),
      ),
    );
  }
}