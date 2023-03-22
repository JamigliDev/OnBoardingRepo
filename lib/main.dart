import 'package:flutter/material.dart';
import 'package:onboarding_views/pages/capybara_onboarding.dart';
import 'package:onboarding_views/utils/constans.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OnBoarding Screens',
      theme: ThemeData(
        primaryColor: pageGreen,
        scaffoldBackgroundColor: bgColor,
        //primarySwatch: Colors.blue,
      ),
      home: const CapybaraOnboarding(),
    );
  }
}
