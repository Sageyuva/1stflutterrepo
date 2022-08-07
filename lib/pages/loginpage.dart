import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:matcher/matcher.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png"),
          SizedBox(
            height: 50.0,
          ),
          Text("LOGIN",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
            child: Column(
            children: [
              TextFormField(
            decoration: InputDecoration(
              hintText: "ENTER USER NAME",
              labelText: "USER NAME",
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              )
              
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "ENTER USER PASSWORD",
              labelText: "PASSWORD",
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              )
            ),
          ),
          SizedBox(
            height: 20.0,
          ),

          ElevatedButton(
            child: Text("Login"),
            style: TextButton.styleFrom(),
            onPressed: (){
              print("HELLO YUVARAJ");
            }, ),
          

            ],
          ),
          )
        ],
      ),
    );
  }
}