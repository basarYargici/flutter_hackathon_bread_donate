import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/constants.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';
import 'package:flutter_hackathon_bread_donate/screens/onBoard/onBoardingContent.dart';

class OnBoarding extends StatefulWidget {
  static String routeName = '/onBoarding_screen';

  OnBoarding({Key key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: PageView.builder(
                  itemCount: dataOnBoarding.length,
                  onPageChanged: (value) {
                    setState(() {
                      current = value;
                    });
                  },
                  itemBuilder: (context, index) => OnBoardCont(
                        lottie: dataOnBoarding[index]['lottie'],
                        title: dataOnBoarding[index]['title'],
                        text: dataOnBoarding[index]['text'],
                      )),
            ),
            Spacer(flex: 1),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(flex: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(dataOnBoarding.length, (index) => buildDot(index)),
                    ),
                    Spacer(flex: 2),
                    Container(
                      height: current != dataOnBoarding.length ? 0 : getProportionateScreenHeight(56),
                      child: SizedBox(
                          width: double.infinity,
                          height: getProportionateScreenHeight(50),
                          child: IconButton(
                            icon: Icon(Icons.navigate_next),
                            onPressed: () {
                              print("pressed");
                              setState(() {
                                current++;
                              });
                              // Navigate to next page
                            },
                          )),
                    ),
                    Spacer(flex: 1,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 2),
      margin: EdgeInsets.only(right: 10),
      height: getProportionateScreenHeight(7),
      width: current == index ? getProportionateScreenWidth(20) : getProportionateScreenWidth(7),
      // change colors
      decoration: BoxDecoration(color: current == index ? Colors.blueAccent : Colors.orange[200], borderRadius: BorderRadius.circular(3)),
    );
  }
}