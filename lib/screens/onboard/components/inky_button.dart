import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';
import 'package:flutter_hackathon_bread_donate/screens/home/home_screen.dart';

class InkyButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const InkyButton({
    Key key,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: [0, 0.8],
              colors: <Color>[
                Colors.blueAccent,
                Colors.deepPurple,
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(80)),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              text,
              style: onboardingSubTitleStyle.copyWith(
                  letterSpacing: 1,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
