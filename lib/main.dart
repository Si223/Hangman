import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hangman/screens/home_screen.dart';
import 'package:hangman/utilities/constants.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            color: kTooltipColor,
            borderRadius: BorderRadius.circular(5.0),
          ),
          textStyle: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
            letterSpacing: 1.0,
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: Color(0xfff58714),
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'AmaticSC'),
      ),
      initialRoute: 'homePage',
      routes: {
        'homePage': (context) => HomeScreen(),
      },
    );
  }
}