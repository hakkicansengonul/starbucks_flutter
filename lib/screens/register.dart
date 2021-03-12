import 'package:flutter/material.dart';
import 'package:starbucks_coffee_flutter/screens/homehome.dart';
import 'package:starbucks_coffee_flutter/screens/login_page.dart';

import '../home.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            //stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Colors.green,
              Colors.green,
              Colors.green,
              Colors.grey,
              Colors.grey,
              Colors.grey,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 140.0,
              ),
              Container(
                width: double.infinity,
                height: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2018/04/26/01/57/graphic-3351078_1280.png",
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  LoginTextfield_("email", false),
                  SizedBox(
                    height: 10.0,
                  ),
                  LoginTextfield_("password", true),
                  SizedBox(
                    height: 10.0,
                  ),
                  LoginTextfield_("retype the password", true),
                  SizedBox(
                    height: 10.0,
                  ),

                  Container(
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Center(
                        child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (LoginPage())),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                  // SizedBox(height: 10.0,),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (HomePage())),
                      );
                    },
                    child: Text(
                      "continue without being a member",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget LoginTextfield_(
  title,
  bool obs,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    child: TextField(
      cursorColor: Colors.black,
      obscureText: false,
      decoration: InputDecoration(
        fillColor: Colors.green,
        focusColor: Colors.green,
        hoverColor: Colors.green,
        labelStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ),
        labelText: title,
      ),
    ),
  );
}
