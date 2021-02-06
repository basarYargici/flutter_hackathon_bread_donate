import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';

class VerticalCard extends StatelessWidget {
  final Image image;
  final String title;
  final String number;

  const VerticalCard({
    Key key,
    this.image,
    this.title,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 135,
      decoration: customCardBoxDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: 85,
              width: 85,
              child: image,
            ),
          ),
          Container(
            height: 45,
            width: 150,
            child: Text(
              title,
              style: cardTitleTextStyle,
              textAlign: TextAlign.center,
            ),
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
