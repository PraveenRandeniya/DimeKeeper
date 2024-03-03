import 'package:dimekeeper/components/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:dimekeeper/components/buttonstyle.dart';
import 'package:dimekeeper/components/textboxstyle.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Color appBarColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          DateFormat('E,MMMM d').format(DateTime.now()),
          style: TextBlackStyleTopNavHeading(),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          if (notification is ScrollUpdateNotification) {
            setState(() {
              appBarColor = notification.metrics.pixels > 0
                  ? Color(0xFFDFF8FF)
                  : Colors.transparent;
            });
          }
          return false;
        },
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign up",
                    style: TextRichBlueHeadingStyle(),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Name",
                    style: TextGrayStyleLabelHeading(),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: TextBoxStyleBasic(
                      myHintText: "Enter your name",
                    ),
                    style: TextStyle(
                      color: Color(0xFF868686),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Last Name",
                    style: TextGrayStyleLabelHeading(),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: TextBoxStyleBasic(
                      myHintText: "Enter your last name",
                    ),
                    style: TextStyle(
                      color: Color(0xFF868686),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Email",
                    style: TextGrayStyleLabelHeading(),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: TextBoxStyleBasic(
                      myHintText: "Enter your email",
                    ),
                    style: TextStyle(
                      color: Color(0xFF868686),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Password",
                    style: TextGrayStyleLabelHeading(),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: TextBoxStyleBasic(
                      myHintText: "Enter your password",
                      mySuffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility),
                      ),
                    ),
                    style: TextStyle(
                      color: Color(0xFF868686),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Confirm Password",
                    style: TextGrayStyleLabelHeading(),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: TextBoxStyleBasic(
                      myHintText: "Confirm your password",
                      mySuffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility),
                      ),
                    ),
                    style: TextStyle(
                      color: Color(0xFF868686),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PrimaryButtonWidget(
                    mybuttonText: "Sign up",
                    mybuttonFunction: () {},
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextGrayStyleMinorLabel(),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Sign in",
                        style: TextRichBlueStyle(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
