import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:matcher/matcher.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class regpage extends StatefulWidget {
  const regpage({Key? key}) : super(key: key);

  @override
  State<regpage> createState() => _regpageState();
}

class _regpageState extends State<regpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child:Column(
          children: [
            Image.asset("assets/images/login_image.png"),
            SizedBox(
              height: 30,
            ),
            Text("SIGNUP",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
              ) ,
            Column(
              children: [
                TextFormField(
                decoration: InputDecoration(
                  labelText: "FIRST NAME",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                  hintText: "Ex:Yuvaraj",
                ),
                ),
                TextFormField(
                decoration: InputDecoration(
                  labelText: "FIRST NAME",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                  hintText: "Ex:Yuvaraj",
                ),
                )
              ],
            )
        ],
        ),
      )
    );
  }
}