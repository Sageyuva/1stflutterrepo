import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(myapp());
  
}


class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     themeMode: ThemeMode.light,
     theme: ThemeData(
      primarySwatch: Colors.deepPurple),
    routes: {
      "/":(context)=>loginpage(),
      "/login":(context) => homepage(),
    },
    );
  }
}