import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Notification Page'),
      ),
    );
  }
}