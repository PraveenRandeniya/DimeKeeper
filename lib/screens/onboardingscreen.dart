import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dimekeeper/data/onboardingcontent.dart';

class OnBoardinScreen extends StatefulWidget {
  OnBoardinScreen({super.key});

  @override
  State<OnBoardinScreen> createState() => _OnBoardinScreenState();
}

class _OnBoardinScreenState extends State<OnBoardinScreen> {
  late List<OnboardingCotent> content;

  @override
  void initState() {
    content = OnboardingCotent.getContent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDFF8FF),
      body: PageView.builder(
        itemCount: content.length,
        itemBuilder: (_, i) {
          return SafeArea(
            child: Column(
              children: [SvgPicture.asset(content[i].image)],
            ),
          );
        },
      ),
    );
  }
}
