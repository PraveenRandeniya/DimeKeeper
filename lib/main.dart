import 'package:dimekeeper/screens/onboardingscreen.dart';
import 'package:dimekeeper/screens/signinscreen.dart';
import 'package:dimekeeper/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:dimekeeper/screens/signupscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFDFF8FF),
        colorSchemeSeed: Color(0xFF125A93),
      ),
      home: SignUpScreen(),
    ),
  );
}
