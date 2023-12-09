import 'package:flutter/material.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  _ReelsPageState createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reels'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Reels Page'),
      ),
    );
  }
}