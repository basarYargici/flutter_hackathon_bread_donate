import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';

class VerticalCard extends StatelessWidget {
  final Image image;
  final String title;
  final int number;

  const VerticalCard({
    Key key,
    this.image,
    this.title,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.95,
      height: size.height * 0.2,
      decoration: shadowedBoxDecoration.copyWith(
        color: Color(0xffDCD8F1),
        border: Border.all(color: Color(0xff2086DD).withOpacity(0.4), width: 5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: size.height * 0.125,
              width: size.width * 0.20,
              child: image,
            ),
          ),
          Container(
            height: size.height * 0.065,
            width: size.width * 0.365,
            child: Text(
              title,
              style: cardTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          number != null
              ? Text(
                  number.toString(),
                  style: cardNumberTextStyle,
                )
              : CircularProgressIndicator(),
        ],
      ),
    );
  }
}
