import 'package:flutter/material.dart';
import 'package:suitmedia/view/first/first_a.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SuitMedia',
      home: FirstA(),
    );
  }
}
