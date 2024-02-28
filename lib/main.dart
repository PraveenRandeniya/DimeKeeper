import 'package:dimekeeper/screens/onboardingscreen.dart';
import 'package:dimekeeper/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFDFF8FF),
      ),
      home: OnBoardinScreen(),
    ),
  );
}
