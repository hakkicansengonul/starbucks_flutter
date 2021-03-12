import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            Colors.green,
            Colors.green,
            Colors.grey,
            Colors.grey,
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 140.0,
          ),
          Container(
            height: 140.0,
            width: 240.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                  fit: BoxFit.contain),
              border: Border.all(
                color: Colors.grey,
                width: 4.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          _Conta("Profile"),
          SizedBox(
            height: 20.0,
          ),
          _Conta("Card balance"),
          SizedBox(
            height: 20.0,
          ),
          _Conta("Help"),
          SizedBox(
            height: 20.0,
          ),
          _Conta("Settings"),
          SizedBox(
            height: 20.0,
          ),
          _Conta("Sign out"),
        ],
      ),
    );
  }
}

Widget _Conta(String title) {
  return Container(
    height: 50.0,
    width: 170.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.grey,
    ),
    child: Center(
        child: Text(
      title,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
    )),
  );
}
