import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class TotalDisplayBorderedText extends StatelessWidget {
  final double total;

  const TotalDisplayBorderedText({
    Key key,
    this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Toplam',
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w900)),
        BorderedText(
          strokeColor: Colors.black,
          child: Text(
            '${total.toString()} TL',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
