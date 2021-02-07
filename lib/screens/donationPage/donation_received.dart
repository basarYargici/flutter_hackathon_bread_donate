import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hackathon_bread_donate/config/constants.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';
import 'package:flutter_hackathon_bread_donate/screens/home/home_screen.dart';
import 'package:flutter_hackathon_bread_donate/widgets/lottie_widget.dart';

// TODO's baker should be send to HOMESCREEN
class DonationReceived extends StatefulWidget {
  static String routeName = '/donation_received_screen';

  @override
  _DonationReceivedState createState() => _DonationReceivedState();
}

class _DonationReceivedState extends State<DonationReceived> {
  var isTimeOut = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      setState(() {
        isTimeOut = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: buildColumn(),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left_sharp,
              color: Colors.black45,
              size: getProportionateScreenHeight(45),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
          )),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            child: !isTimeOut
                ? LottieWidget(
                    path: Constants.EATING_ANIM_PATH,
                  )
                : LottieWidget(
                    path: Constants.THANKS_ANIM_PATH,
                  )),
        SizedBox(
          height: getProportionateScreenHeight(50),
          width: double.infinity,
        ),
        SizedBox(
            child: Text('TEŞEKKÜRLER',
                style: onboardingTitleStyle.copyWith(
                    fontFamily: 'PTSherifRegular',
                    fontSize: getProportionateScreenWidth(30),
                    fontWeight: FontWeight.bold))),
      ],
    );
  }
}
