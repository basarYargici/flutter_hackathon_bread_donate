import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hackathon_bread_donate/config/checkIsLoggedIn.dart';
import 'package:flutter_hackathon_bread_donate/config/constants.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';
import 'package:flutter_hackathon_bread_donate/widgets/lottie_widget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'components/splash_text.dart';

// TODO's baker should be send to HOMESCREEN
class SplashScreen extends StatefulWidget {
  static String routeName = '/splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int logInCount;

  @override
  void initState() {
    super.initState();
    timer();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        child: buildColumn(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: [
        Spacer(
          flex: 1,
        ),
        Expanded(
            flex: 5,
            child: LottieWidget(
              path: Constants.SPLASH_ANIM_PATH,
            )),
        Expanded(
            flex: 2,
            child: SplashText(
              appName: Constants.APP_NAME,
            )),
        Expanded(
          child: Center(
            child: SpinKitPumpingHeart(
              color: Colors.black,
              size: 75.0,
            ),
          ),
        ),
      ],
    );
  }

  void timer() {
    Timer(Duration(seconds: 3), () {
      isLoggedIn()
          .then((value) => Navigator.pushReplacementNamed(context, value));
    });
  }
}
