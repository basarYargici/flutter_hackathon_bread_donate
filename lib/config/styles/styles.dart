import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';

// Heights, widths and colors will be change according to app design

final TextStyle baseStyle = TextStyle(
  fontSize: getProportionateScreenWidth(20),
  letterSpacing: 2,
  color: Colors.black,
);

final TextStyle onboardingTitleStyle = TextStyle(
  fontSize: getProportionateScreenWidth(25),
  letterSpacing: 4,
  color: Colors.black,
  fontWeight: FontWeight.normal,
);

final TextStyle onboardingSubTitleStyle = TextStyle(
  fontSize: getProportionateScreenWidth(15),
  letterSpacing: 2,
  color: Colors.black,
);

final TextStyle titleStyle = baseStyle.copyWith(
  fontSize: getProportionateScreenWidth(34),
  letterSpacing: 8,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

final TextStyle subtitleStyle = baseStyle.copyWith(
  color: Colors.black45,
  fontWeight: FontWeight.normal,
);

final TextStyle cardTitleTextStyle = TextStyle(
  letterSpacing: 0.05,
  fontFamily: 'Comfortaa',
  fontSize: 17,
  fontWeight: FontWeight.w900,
);

final TextStyle cardNumberTextStyle = TextStyle(
  fontFamily: 'Comfortaa',
  fontSize: 24,
  fontWeight: FontWeight.w800,
);

//box styles
final BoxShadow cardBoxShadow = BoxShadow(
  blurRadius: 4,
  offset: Offset(0, 4),
  color: Colors.black.withOpacity(0.5),
);

final BoxDecoration borderedCardBoxDecoration = BoxDecoration(
  color: Color(0xff8FC2EE),
  borderRadius: BorderRadius.circular(15),
  border: Border.all(color: Color(0x662086DD), width: 5),
);

final BoxDecoration donateButtonBoxDecoration = BoxDecoration(
  color: Color(0xff6249C4),
  borderRadius: BorderRadius.circular(15),
  border: Border.all(color: Colors.black.withOpacity(0.2), width: 5),
);

final BoxDecoration shadowedBoxDecoration = BoxDecoration(
  color: Color(0xff5349C4),
  borderRadius: BorderRadius.circular(20),
  boxShadow: [cardBoxShadow],
  border: Border.all(color: Colors.black.withOpacity(0.2), width: 3),
);

final BoxDecoration modalBottomSheetBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  ),
  color: Color(0xffCCDBE8),
  border: Border.all(color: Color(0xff2086DD).withOpacity(0.5), width: 6),
);
//custom themes
final ThemeData customTheme = ThemeData().copyWith(
  bottomSheetTheme: BottomSheetThemeData(
    modalBackgroundColor: Colors.transparent,
  ),
);
