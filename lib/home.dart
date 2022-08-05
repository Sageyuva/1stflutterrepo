import 'package:flutter/material.dart';


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
      drawer: Drawer(),
    );
  }
}