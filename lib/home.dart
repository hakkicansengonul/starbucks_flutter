import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks_coffee_flutter/screens/favorite_screen.dart';
import 'package:starbucks_coffee_flutter/screens/homehome.dart';

import 'package:starbucks_coffee_flutter/screens/malls_screen.dart';
import 'package:starbucks_coffee_flutter/data_page/page_coffee_data_screen.dart';
import 'package:starbucks_coffee_flutter/screens/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        backgroundColor: Colors.grey,
        buttonBackgroundColor: Colors.green,
        items: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home_outlined),
              Text("Home"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.business_outlined),
              Text("Malls"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite_border_outlined),
              Text("Favorite"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text("Profile"),
            ],
          ),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
      body: _index == 0
          ? Home_Page()
          : _index == 1
              ? MPage()
              : _index == 2
                  ? FavoritePage()
                  : ProfilePage(),
    );
  }
}
