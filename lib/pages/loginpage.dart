import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:matcher/matcher.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatefulWidget {

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
String name="";
bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
        children: [
          Image.asset("assets/images/login_image.png"),
          SizedBox(
            height: 50.0,
          ),
          Text("LOGIN $name",
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
            onChanged: (value){
            name=value;
              setState(() {});
            },
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
            height: 50.0,
          ),
             InkWell(
              onTap: ()async{
                setState(() {
                  changebutton=true;
                  
                });

                await Future.delayed(Duration(seconds: 2));
                Navigator.pushNamed(context, MyRoutes.homeroute);
                
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
              height: 50,
              width: changebutton ? 60: 150,
              alignment: Alignment.center,
              child: changebutton?
              Icon(
                Icons.done,
                color: Colors.white,
              ): Text("LOGIN",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(changebutton?100: 10),
              ),
             ),
             )
          // ElevatedButton(
          //   child: Text("Login"),
          //   style: TextButton.styleFrom(
          //     minimumSize: Size(100,50)
          //   ),
          //   onPressed: (){
          //     Navigator.pushNamed(context, MyRoutes.homeroute);
          //   }, ),
          

            ],
          ),
          )
        ],
      ),
      ),
    );
  }
}