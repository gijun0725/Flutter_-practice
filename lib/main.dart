import 'package:flutter/material.dart';
import 'package:doit/customwidget.dart';
import 'TextControl.dart';
import 'customwidget.dart';
import 'SlidetCustom.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});



  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Text')),
        body:CustomSlide()
      ),
    );
  }
}
