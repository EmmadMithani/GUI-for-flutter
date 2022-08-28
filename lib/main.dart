import 'package:flutter/material.dart';
import 'package:tasktwo/Screens/chat_screen.dart';
import 'package:tasktwo/Screens/date_screen.dart';
import 'package:tasktwo/Screens/package_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DateScreen(),
    );
  }
}
