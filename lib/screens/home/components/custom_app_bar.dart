import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/constants.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';
import 'package:flutter_hackathon_bread_donate/screens/splash/components/splash_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const CustomAppBar({
    Key key,
    this.appBar,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        Constants.APP_NAME,
        style: titleStyle.copyWith(fontFamily: 'Comfortaa'),
      ),
      backgroundColor: Color(0xffE1E6EB),
      elevation: 0,
      leading: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff5349C4),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: 7),
                child: Icon(
                  Icons.menu,
                  size: 45,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
