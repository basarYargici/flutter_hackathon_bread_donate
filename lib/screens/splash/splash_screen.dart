import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hackathon_bread_donate/config/checkIsLoggedIn.dart';
import 'package:flutter_hackathon_bread_donate/config/constants.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';
import 'package:flutter_hackathon_bread_donate/models/baker_system_model.dart';
import 'package:flutter_hackathon_bread_donate/service/service.dart';
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
  Baker _baker;
  int logInCount;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('splash');
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

                /*
                _baker.freeBread.count = 0

                + ya bastın -> count ++ , sistemi bilgilendir
              db de yeni bi countun oluştu
              db de sana yeni veriyi aktardı
              _baker.freeBread.count ile yeni count u aldın
                 */

                // if user enters the application, navigate to onboarding page, otherwise home page
                // navigate with baker object as a parameter
                print('Navigating');
                Timer(Duration(seconds: 3), () {
                  isLoggedIn().then((value) =>
                      Navigator.pushReplacementNamed(context, value));
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
