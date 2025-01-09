// import 'package:cipher/onboarding_screen.dart';
import 'package:cipher/onboarding_screen.dart';
import 'package:cipher/screens/auth/login_screen.dart';
import 'package:cipher/screens/home_screen.dart';
import 'package:flutter/material.dart';

late Size mq;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cipher',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            elevation: 2,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 19),
            backgroundColor: Color(0xFFF9F4FB)),
      ),
      home: OnboardingScreen(),
    );
  }
}
