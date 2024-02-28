import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dimekeeper/data/onboardingcontent.dart';
import 'package:dimekeeper/components/textmainstyle.dart';

class OnBoardinScreen extends StatefulWidget {
  OnBoardinScreen({super.key});

  @override
  State<OnBoardinScreen> createState() => _OnBoardinScreenState();
}

class _OnBoardinScreenState extends State<OnBoardinScreen> {
  late List<OnboardingCotent> content;
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    content = OnboardingCotent.getContent();
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDFF8FF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: content.length,
                  itemBuilder: (_, i) {
                    return Column(
                      children: [SvgPicture.asset(content[i].image)],
                    );
                  },
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF125A93),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextButton(
                  child: Text(
                    currentIndex == content.length - 1 ? "Get Started" : "Next",
                    style: TextMainStyle(
                      color: Color(0xFFDFF8FF),
                    ),
                  ),
                  onPressed: () {
                    if (currentIndex == content.length - 1) {}
                    _controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn);
                  },
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                currentIndex == content.length - 1 ? "" : "Skip",
                style: TextMainStyle(
                  color: Color(0xFF125A93),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
