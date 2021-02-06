import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon_bread_donate/config/size_config.dart';

// Heights, widths and colors will be change according to app design

final TextStyle baseStyle = TextStyle(
  fontSize: getProportionateScreenWidth(20),
  letterSpacing: 2,
  color: Colors.black,
);

final TextStyle appbarStyle1 = baseStyle.copyWith(
  fontSize: getProportionateScreenWidth(10),
  color: Colors.black54,
  fontWeight: FontWeight.bold,
);

final TextStyle categoryStyle = baseStyle.copyWith(
  fontSize: getProportionateScreenWidth(10),
  color: Colors.white,
  fontWeight: FontWeight.bold,
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

final TextStyle contentStyle = baseStyle.copyWith(
  fontWeight: FontWeight.w300,
);