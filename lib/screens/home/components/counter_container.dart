import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';
import 'package:flutter_hackathon_bread_donate/screens/home/models/bread_count_model.dart';
import 'package:provider/provider.dart';
import 'counter_button.dart';

class CounterContainer extends StatelessWidget {
  const CounterContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SelectedBreadInfo>(builder: (context, value, child) {
      return Container(
        decoration: borderedCardBoxDecoration.copyWith(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 5)),
        child: Row(
          children: [
            CounterIconButton(
              tl: 10,
              bl: 10,
              icon: Icon(
                Icons.remove,
                size: 50,
              ),
              pressed: () {
                value.decreamentBreadCount();
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                '${Provider.of<SelectedBreadInfo>(context).breadCount.toString()}',
                style: TextStyle(fontSize: 48),
              ),
            ),
            CounterIconButton(
                tr: 10,
                br: 10,
                icon: Icon(
                  Icons.add,
                  size: 50,
                ),
                pressed: () {
                  value.incrementBreadCount();
                }),
          ],
        ),
      );
    });
  }
}
