import 'package:flutter/material.dart';
import 'package:my_app/login/mail.dart';
import 'package:my_app/login/new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

TextEditingController mycon = TextEditingController();
String? username;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Newpage(),
    );
  }
}
