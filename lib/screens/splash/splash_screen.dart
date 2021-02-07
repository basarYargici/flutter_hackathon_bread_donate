import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hackathon_bread_donate/config/constants.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';
import 'package:flutter_hackathon_bread_donate/models/baker_system_model.dart';
import 'package:flutter_hackathon_bread_donate/screens/onBoard/onboarding_screen.dart';
import 'package:flutter_hackathon_bread_donate/service/service.dart';
import 'package:flutter_hackathon_bread_donate/widgets/lottie_widget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'components/app_name.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Baker _baker;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        // TODO's search: is this necessary?
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
          flex: 1,
          child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                _baker = snapshot.data;
                // logs
                // print(_baker.freeBread.count);
                // print(_baker.givenBread.count);

                Timer(Duration(seconds: 3), () {
                  print('Navigating');
                  // if user enters the application, navigate to onboarding page, otherwise home page
                  // navigate with baker object as a parameter
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Check(
                  //       baker: _baker,
                  //     ),
                  //   ),
                  // );

                  Navigator.pushReplacementNamed(
                    context,
                    OnboardingScreen.routeName,
                  );
                });
              }
              return Center(
                  child: SpinKitPumpingHeart(
                color: Colors.black,
                size: 75.0,
              ));
            },
          ),
        )
      ],
    );
  }
}
