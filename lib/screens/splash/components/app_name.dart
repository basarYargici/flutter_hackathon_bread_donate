import 'package:flutter/cupertino.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';

class SplashText extends StatelessWidget {
  final String appName;

  const SplashText({
    Key key,
    this.appName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(appName,
        style: titleStyle.copyWith(
          fontFamily: 'PacificoRegular',
        ));
  }
}
