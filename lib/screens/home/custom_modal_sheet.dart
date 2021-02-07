import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';
import 'package:flutter_hackathon_bread_donate/screens/home/models/bread_count_model.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
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
        child: Builder(
          builder: (context) {
            return Column(
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
                  total:
                      Provider.of<SelectedBreadInfo>(context).breadCount * 2.0,
                ),
                NextButtonModalSheet(
                  title: 'İlerle',
                  onTap: () async {
                    var breadCount =
                        Provider.of<SelectedBreadInfo>(context, listen: false)
                            .breadCount;
                    var res = await http.get(
                        'https://flutterhackathon21-breaddonate-default-rtdb.firebaseio.com/given_bread.json');
                    int currentBreadCount = jsonDecode(res.body)['count'];
                    ;
                    await http.put(
                        'https://flutterhackathon21-breaddonate-default-rtdb.firebaseio.com/given_bread.json',
                        body: jsonEncode(
                            {'count': currentBreadCount + breadCount}));
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
