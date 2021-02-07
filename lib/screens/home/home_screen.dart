import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';
import 'package:flutter_hackathon_bread_donate/screens/home/custom_modal_sheet.dart';
import 'components/custom_app_bar.dart';
import 'components/custom_card.dart';
import 'components/vertical_card.dart';
import 'package:http/http.dart' as http;
import 'custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home_page';

  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _availableBreadCount;
  int _totalGivenBreadCount;

  @override
  void initState() {
    super.initState();
    _updateCount('free_bread');
    _updateCount('given_bread');
  }

  void _updateCount(String endPoint) async {
    var res = await http.get(
        'https://flutterhackathon21-breaddonate-default-rtdb.firebaseio.com/$endPoint.json');
    var count = jsonDecode(res.body)['count'];

    switch (endPoint) {
      case 'given_bread':
        _totalGivenBreadCount = count;
        break;
      case 'free_bread':
        _availableBreadCount = count;
        break;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE1E6EB),
        appBar: CustomAppBar(
          appBar: AppBar(),
        ),
        drawer: CustomDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  image: Image(
                    image: AssetImage('assets/images/png/bread_icon_black.png'),
                  ),
                  title: 'Askıdaki Ekmekler',
                  number: _availableBreadCount,
                ),
                CustomCard(
                  image: Image(
                    image: AssetImage('assets/images/png/location.png'),
                  ),
                  title: 'Aktif Şehir',
                  number: 21,
                ),
              ],
            ),
            VerticalCard(
              image: Image.asset('assets/images/png/hand_with_bread.png'),
              number: _totalGivenBreadCount,
              title: 'Askıdan alınan ekmek sayısı',
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context, builder: (context) => CustomModalSheet());
              },
              child: Container(
                decoration: donateButtonBoxDecoration,
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Bağışla',
                    style: donateTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
