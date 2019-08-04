import 'package:flutter/material.dart';


import 'move.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'grid list',
      home: move(),
    );
  }
}
