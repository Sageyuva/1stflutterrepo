import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/pages/reg.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/theme.dart';
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
     theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
    routes: {
      "/":(context)=>homepage(),
      "/reg":(context)=>regpage(),
      MyRoutes.homeroute:(context) => homepage(),
      MyRoutes.loginroute:(context)=>loginpage(),
    },
    );
  }
}