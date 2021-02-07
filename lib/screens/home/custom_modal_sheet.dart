import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';
import 'package:flutter_hackathon_bread_donate/screens/home/models/bread_count_model.dart';
import 'package:provider/provider.dart';

import 'components/counter_button.dart';
import 'components/counter_container.dart';
import 'components/next_button.dart';
import 'components/total_displayer.dart';

class CustomModalSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectedBreadInfo(),
      child: Container(
        decoration: modalBottomSheetBoxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/png/colored_bread.png'),
                ),
                CounterContainer(),
              ],
            ),
            TotalDisplayBorderedText(
              total: 3,
            ),
            Builder(builder: (context) {
              return NextButtonModalSheet(
                title: 'İlerle',
                onTap: () {
                  var breadCount =
                      Provider.of<SelectedBreadInfo>(context, listen: false)
                          .breadCount;
                  print(breadCount);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
