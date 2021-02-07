import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/styles/styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      child: Drawer(
        child: Container(
          padding: EdgeInsets.only(left: 10, top: 120, right: 10, bottom: 20),
          decoration: customDrawerBoxDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hakkında',
                style: cardTitleTextStyle,
              ),
              CustomDivider(
                width: 180,
              ),
              Text(
                'Biz Kimiz',
                style: cardTitleTextStyle,
              ),
              CustomDivider(
                width: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'İletişim',
                    style: cardTitleTextStyle,
                  ),
                  PhoneIconImage()
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 85,
                    child: Text(
                      'Kullanıcı Girişi',
                      style: cardTitleTextStyle,
                      softWrap: true,
                    ),
                  ),
                  Container(
                    height: 75,
                    child: Image.asset('assets/images/png/wood_oven.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PhoneIconImage extends StatelessWidget {
  const PhoneIconImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(0.73),
        child: Container(
          width: 45,
          child: Image.asset('assets/images/png/phone.png'),
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  final double width;

  const CustomDivider({
    Key key,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Divider(
        height: 55,
        thickness: 4,
        color: Colors.black,
      ),
    );
  }
}
