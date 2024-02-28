import 'package:flutter/material.dart';
import 'package:frontenfforcoryd/homescreen.dart';
import 'package:frontenfforcoryd/verificationscreen.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
