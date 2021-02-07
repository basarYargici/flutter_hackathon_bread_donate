import 'package:flutter/cupertino.dart';
import 'package:flutter_hackathon_bread_donate/screens/home/home_screen.dart';
import 'package:flutter_hackathon_bread_donate/screens/onBoard/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String> isLoggedIn() async {
  var _sharedPreferances = await SharedPreferences.getInstance();
  if (_sharedPreferances.getInt('logInCount') == null) {
    await _sharedPreferances.setInt('logInCount', 1);
    return OnboardingScreen.routeName;
  }
  return HomeScreen.routeName;
}
