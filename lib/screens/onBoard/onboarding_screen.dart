import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/constants.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';
import 'package:flutter_hackathon_bread_donate/screens/home/home_screen.dart';
import 'components/onboarding_content.dart';
import 'package:flutter_hackathon_bread_donate/screens/onBoard/components/onboarding_content.dart';

import 'components/inky_button.dart';


// TODO's add new lottie gifs to new pageview screens

class OnboardingScreen extends StatefulWidget {
  static String routeName = '/onboarding_screen';

  OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPageIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [skipButton(), pageView(), pageControl(context)],
        ),
      ),
    );
  }

  Row skipButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
          margin: EdgeInsets.all(getProportionateScreenWidth(8)),
          height: getProportionateScreenHeight(40),
          width: getProportionateScreenWidth(80),
          child: InkyButton()),
    ]);
  }

  Expanded pageView() {
    return Expanded(
      flex: 7,
      child: PageView.builder(
          controller: _pageController,
          itemCount: dataOnboarding.length,
          onPageChanged: (value) {
            setState(() {
              currentPageIndex = value;
            });
          },
          itemBuilder: (context, index) => OnboardContent(
                lottie: dataOnboarding[index]['lottie'],
                title: dataOnboarding[index]['title'],
                text: dataOnboarding[index]['text'],
              )),
    );
  }

  Expanded pageControl(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                dataOnboarding.length, (index) => buildDot(index)),
          ),
          Spacer(flex: 1),
          nextPageView(context),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
        ],
      ),
    );
  }

  SizedBox nextPageView(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: getProportionateScreenHeight(50),
        child: IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {
            setState(() {
              _pageController.nextPage(
                  duration: Duration(milliseconds: 350), curve: Curves.linear);
              currentPageIndex < 2
                  ? currentPageIndex++
                  : Navigator.pushReplacementNamed(
                      context, HomeScreen.routeName);
            });
            // Navigate to next page
          },
        ));
  }

  AnimatedContainer buildDot(index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 2),
      margin: EdgeInsets.only(right: 10),
      height: getProportionateScreenHeight(7),
      width: currentPageIndex == index
          ? getProportionateScreenWidth(20)
          : getProportionateScreenWidth(7),
      // change colors
      decoration: BoxDecoration(
          color:
              currentPageIndex == index ? Colors.purple[300] : Colors.blue[300],
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
