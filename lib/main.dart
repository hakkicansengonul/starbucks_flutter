import 'package:flutter/material.dart';
import 'package:starbucks_coffee_flutter/home.dart';
import 'package:starbucks_coffee_flutter/onboarding_screen.dart';
import 'package:starbucks_coffee_flutter/screens/recovery_screen.dart';
import 'package:starbucks_coffee_flutter/screens/register.dart';
import 'package:starbucks_coffee_flutter/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),

      //HomePage(),
    );
  }
}
