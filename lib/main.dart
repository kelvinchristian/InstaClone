import 'package:flutter/material.dart';

import 'dashboard.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Roboto',
          primaryColor: Colors.black,
          primaryColorDark: Colors.black,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
            headline2: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
            headline3: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
            headline4: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
            headline5: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
            headline6: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
            bodyText1: TextStyle(fontSize: 14.0, color: Colors.white),
            bodyText2: TextStyle(fontSize: 14.0, color: Colors.white),
          ),
          colorScheme: ColorScheme.light(
            primary: Colors.black,
          ),
          scaffoldBackgroundColor: Colors.black,
          backgroundColor: Colors.black),
      home: Scaffold(
        body: Dashboard(),
      ),
    );
  }
}
