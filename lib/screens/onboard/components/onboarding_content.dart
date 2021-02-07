import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';
import 'package:flutter_hackathon_bread_donate/widgets/lottie_widget.dart';
import 'package:lottie/lottie.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({Key key, this.lottie, this.text, this.title})
      : super(key: key);
  final String lottie, text, title;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          child: LottieWidget(path: 'lottie_onboard.json'),
          height: size.height * 0.45,
          width: size.width * 0.7,
        ),
        // Lottie.asset(
        //   'assets/lottie/lottie_onboard.json',
        //   width: getProportionateScreenWidth(380),
        //   height: getProportionateScreenWidth(350),
        // ),
        Text(title, style: onboardingTitleStyle),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child: Text(
            text,
            style: onboardingSubTitleStyle,
          ),
        ),
      ],
    );
  }
}
