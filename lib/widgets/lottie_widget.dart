import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class LottieWidget extends StatelessWidget {
  final String path;

  const LottieWidget({Key key, this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'lib/assets/lottie/$path',
    );
  }
}
