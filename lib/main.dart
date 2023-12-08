import 'package:flutter/material.dart';

import 'dashboard.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Dashboard(),
      ),
    );
  }
}