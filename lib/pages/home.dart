import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';


class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME TO FLUTTER"),
      ),
      body: Material(
        child: Container(
          child: Center(
            child: Text("hello everyone"),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}