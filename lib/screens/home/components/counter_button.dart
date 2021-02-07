import 'package:flutter/cupertino.dart';

class CounterIconButton extends StatelessWidget {
  final Icon icon;
  final Function pressed;
  final double tl;
  final double tr;
  final double bl;
  final double br;

  const CounterIconButton({
    Key key,
    this.icon,
    this.pressed,
    this.tl = 0,
    this.tr = 0,
    this.bl = 0,
    this.br = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        height: 75,
        child: icon,
        decoration: BoxDecoration(
          color: Color(0xff5349C4),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(bl),
            bottomRight: Radius.circular(br),
            topLeft: Radius.circular(tl),
            topRight: Radius.circular(tr),
          ),
        ),
      ),
    );
  }
}
