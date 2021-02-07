import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hackathon_bread_donate/config/constants.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';
import 'package:flutter_hackathon_bread_donate/screens/splash/components/splash_text.dart';
import 'package:flutter_hackathon_bread_donate/widgets/lottie_widget.dart';

// TODO's baker should be send to HOMESCREEN
class DonationReceived extends StatefulWidget {
  static String routeName = '/splash_screen';

  @override
  _DonationReceivedState createState() => _DonationReceivedState();
}

class _DonationReceivedState extends State<DonationReceived> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Container(
          child: buildColumn(),
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: [
        Expanded(
            flex: 5,
            child: LottieWidget(
              path: Constants.EATING_ANIM_PATH,
            )),
        Expanded(
            flex: 5,
            child: LottieWidget(
              path: Constants.THANKS_ANIM_PATH,
            )),
        Expanded(
            flex: 2,
            child: SplashText(
              appName: 'TEŞEKKÜRLER',
            )),
      ],
    );
  }
}
