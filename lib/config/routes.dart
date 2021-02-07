import 'package:flutter/cupertino.dart';
import 'package:flutter_hackathon_bread_donate/screens/home/home_screen.dart';
import 'package:flutter_hackathon_bread_donate/screens/onBoard/onboarding_screen.dart';
import 'package:flutter_hackathon_bread_donate/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  OnboardingScreen.routeName: (content) => OnboardingScreen(),
};