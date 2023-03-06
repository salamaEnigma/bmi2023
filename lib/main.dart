import 'package:flutter/material.dart';
import 'package:bmi2023/pages/result.dart';
import 'package:bmi2023/pages/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Bmi(),
        "/result": (context) => SecondPage(),
      },
    );
  }
}
