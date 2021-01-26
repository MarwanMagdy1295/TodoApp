import 'package:flutter/material.dart';
import 'package:todo_app/screens/add_task.dart';
import 'package:todo_app/screens/home.dart';
import 'package:todo_app/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: SplashScreen(),
    );
  }
}
