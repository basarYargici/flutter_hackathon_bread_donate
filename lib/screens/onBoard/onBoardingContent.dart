import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardCont extends StatelessWidget {
  const OnBoardCont({Key key, this.lottie, this.text, this.title})
      : super(key: key);
  final String lottie, text, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        // ignore: prefer_single_quotes
        Lottie.asset(
          'assets/lottie/lottie_onboard.json',
          width: 380,
          height: 380.0,
        ),
        Spacer(
          flex: 1,
        ),
        Text(title,
            style: TextStyle(fontSize: 23, fontFamily: 'PTSherifRegular')),
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child: Text(text),
        ),
      ],
    );
  }
}
