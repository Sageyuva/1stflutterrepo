import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

void main(List<String> args) {
  runApp(myapp());
  
}


class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:homepage(),
    );
  }
}