import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/constants.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';
import 'package:flutter_hackathon_bread_donate/widgets/lottie_widget.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        // TODO's search: is this necessary?
        //height: MediaQuery.of(context).size.height,
        //width: MediaQuery.of(context).size.width,
        child: createSplashColumn());
  }

  Column createSplashColumn() {
    return Column(
      children: [
        Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 5,
          child: LottieWidget(
            path: Constants.SPLASH_ANIM_PATH,
          ),
        ),
        Expanded(
            flex: 2,
            child: Text(Constants.APP_NAME,
                style: titleStyle.copyWith(
                  fontFamily: 'PacificoRegular',
                ))),
        Expanded(child: Center(child: CircularProgressIndicator()), flex: 1)
      ],
    );
  }
}
