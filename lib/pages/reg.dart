import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:matcher/matcher.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_application_1/widgets/drawer.dart';

class regpage extends StatefulWidget {
  const regpage({Key? key}) : super(key: key);

  @override
  State<regpage> createState() => _regpageState();
}

class _regpageState extends State<regpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTER PAGE"),
      ),

      body: Material(
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
                padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "FIRST NAME",
                        hintText: "Ex:Yuvaraj",
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "LAST NAME",
                        hintText: "Ex:Dhammure",
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "PHONE NUMBER",
                        hintText: "Ex:0123456789",
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                
                    ),
                    SizedBox(
                        height: 10,
                      ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "CONFIRM PASSWORD",
                        labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      ),
                      
                    )
                  
                  ],
                ),
              ),
              AnimatedContainer(
                alignment: Alignment.center,
                height: 50,
                width: 100,
                duration:Duration(seconds: 1),
                child: Text("SIGN UP",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 65, 180, 111),
                  borderRadius:BorderRadius.circular(20),
                ),
                ),
                
            
          ],
          ),
        )
      ),
      drawer: MyDrawer(),
    );
  }
}