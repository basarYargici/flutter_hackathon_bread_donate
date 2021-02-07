import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';

class CustomCard extends StatelessWidget {
  final Image image;
  final String title;
  final String number;

  const CustomCard({
    Key key,
    this.image,
    this.title,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 180,
      decoration: shadowedBoxDecoration.copyWith(
        color: Color(0xffDCD8F1),
        border: Border.all(color: Color(0xff2086DD).withOpacity(0.4), width: 6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 95,
            width: 95,
            child: image,
          ),
          Text(
            title,
            style: cardTitleTextStyle,
          ),
          Text(
            number,
            style: cardNumberTextStyle,
          )
        ],
      ),
    );
  }
}
