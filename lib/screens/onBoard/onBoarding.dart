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
              flex: 10,
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
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        dataOnBoarding.length, (index) => dot(index: index)),
                  ),
                ],
              ),
              //child: ,
            ),
          ],
        ),
      ),
    );
  }
}

Container dot({int index}) {
  return Container(
    margin: EdgeInsets.only(right: 5),
    height: 6,
    width:
        6, //TODO: current == index ? 22 : 6 aşağıdaki üçlüden sayfaya gelince uzaması lazım
    decoration: BoxDecoration(
        color: Color(0xff8FC2EE), borderRadius: BorderRadius.circular(3)),
  );
}
