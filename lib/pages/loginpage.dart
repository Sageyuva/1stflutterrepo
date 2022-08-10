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
String name="NAME PLEASE";
bool changebutton = false;
bool fb=false;

final _formKey = GlobalKey<FormState>();

 
 moveToHome(BuildContext) async{
  if (_formKey.currentState!.validate()) {
    
  
  setState(() {
                    changebutton=true;
                    
                  });

                  await Future.delayed(Duration(seconds: 1));
                  await Navigator.pushNamed(context, MyRoutes.homeroute);
                  setState(() {
                    changebutton=false;
                  });
                  setState(() {
                    fb=true;
                  });
 }
 }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
          children: [
            Image.asset("assets/images/hey.png"),
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
              validator:(value) {
                if (value!.isEmpty) {
                  return "user name cannot be empty";
                }
                return null;
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
              validator:(value) {
                if (value!.isEmpty) {
                  return "Password cannot be empty";
                }
                 else if (value.length<6) {
                  return "Password is short";
                }
                return null;
              },
            ),
            SizedBox(
              height: 50.0,
            ),
               InkWell(
                onTap: ()=> moveToHome(BuildContext),
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
               ),
            // ElevatedButton(
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(
            //     minimumSize: Size(100,50)
            //   ),
            //   onPressed: (){
            //     Navigator.pushNamed(context, MyRoutes.homeroute);
            //   }, ),
            SizedBox(
              height: 10,
            ),
            
            
            

              ],
            ),
            )
          ],
      ),
        ),
      ),
    );
  }
}