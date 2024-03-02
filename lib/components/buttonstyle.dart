import 'package:flutter/material.dart';
import 'package:dimekeeper/data/onboardingcontent.dart';
import 'package:dimekeeper/components/textstyle.dart';

class PrimaryButtonWidget extends StatelessWidget {
  PrimaryButtonWidget(
      {super.key, required this.mybuttonText, required this.mybuttonFunction});

  late String mybuttonText;
  late VoidCallback mybuttonFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF125A93),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextButton(
        child: Text(
          mybuttonText,
          style: TextBlueWhiteStyle(),
        ),
        onPressed: mybuttonFunction,
      ),
    );
  }
}
