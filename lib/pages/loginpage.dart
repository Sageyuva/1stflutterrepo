import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:matcher/matcher.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
      ),
      body: Material(
        child: Container(
          child: Center(
            child: Text("WELCOME TO LOGIN PAGE",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple
            ),
            textScaleFactor: 0.9,),
          ),
        ),
        

      ),
      drawer: Drawer(
        child: Container(
          child: Center(
            child: Text("MORE OPTIONS",
            style: TextStyle(
              fontSize:40,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange
            ),
            textScaleFactor: ,),
          ),
        ),
      ),
    );
  }
}