import 'package:flutter/material.dart';

class CustomModalSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: Color(0xffCCDBE8),
        border: Border.all(color: Color(0xff2086DD).withOpacity(0.5), width: 6),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/png/colored_bread.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 5),
                ),
                child: Row(
                  children: [
                    CounterIconButton(
                      icon: Icon(
                        Icons.remove,
                        size: 50,
                      ),
                      pressed: () {
                        print('ss');
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 48),
                      ),
                    ),
                    CounterIconButton(
                      icon: Icon(
                        Icons.add,
                        size: 50,
                      ),
                      pressed: () {
                        print('ss');
                      },
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CounterIconButton extends StatelessWidget {
  final Icon icon;
  final Function pressed;

  const CounterIconButton({
    Key key,
    this.icon,
    this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(height: 75, color: Color(0xff5349C4), child: icon),
    );
  }
}
