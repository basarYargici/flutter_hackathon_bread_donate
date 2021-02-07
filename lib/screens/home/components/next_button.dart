import 'package:flutter/material.dart';

class NextButtonModalSheet extends StatelessWidget {
  final String title;
  final Function onTap;

  const NextButtonModalSheet({
    Key key,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      color: Color(0xff6249C4),
      onPressed: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 35, color: Colors.white, fontFamily: 'Comfortaa'),
        ),
      ),
    );
  }
}
