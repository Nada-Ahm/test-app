import 'package:flutter/material.dart';

import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     // theme: ,
      initialRoute:Screen1.routeName ,
      routes: {
        Screen1.routeName:(context) => Screen1(),
        Screen2.routeName:(context) => Screen2(),
        Screen3.routeName:(context) => Screen3(),
      },
    );
  }
}

