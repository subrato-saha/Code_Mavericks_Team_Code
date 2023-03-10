import 'package:code_mavericks_team_code/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "DEMO",
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
