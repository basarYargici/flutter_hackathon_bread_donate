import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';
import 'package:flutter_hackathon_bread_donate/screens/donationPage/donation_received.dart';
import 'package:flutter_hackathon_bread_donate/screens/home/models/bread_count_model.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'components/counter_button.dart';
import 'components/counter_container.dart';
import 'components/next_button.dart';
import 'components/total_displayer.dart';

class CustomModalSheet extends StatelessWidget {
  void _donate(BuildContext context) async {
    Provider.of<SelectedBreadInfo>(context, listen: false).toggleDisabled();

    var url =
        'https://flutterhackathon21-breaddonate-default-rtdb.firebaseio.com/free_bread.json';

    var breadCount =
        Provider.of<SelectedBreadInfo>(context, listen: false).breadCount;

    var res = await http.get(url);

    int currentBreadCount = jsonDecode(res.body)['count'];

    await http.put(url,
        body: jsonEncode({'count': currentBreadCount + breadCount}));
    //pop the bottom sheet
    await Navigator.pop(context);
    //replace the new page with the homepage
    await Navigator.pushReplacementNamed(context, DonationReceived.routeName);
  }

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
                      Provider.of<SelectedBreadInfo>(context).breadCount * 1.75,
                ),
                NextButtonModalSheet(
                  isDisabled:
                      Provider.of<SelectedBreadInfo>(context).isDisabled,
                  title: 'İlerle',
                  onTap: () => _donate(context),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
