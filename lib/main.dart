import 'package:doit/CustomGrid.dart';
import 'package:flutter/material.dart';
import 'package:doit/CustomWidget.dart';
import 'CustomTextControl.dart';
import 'CustomWidget.dart';
import 'CustomSlide.dart';
import 'CustomList.dart';
import 'CustomScroll.dart';
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
        body:Customscroll()
      ),
    );
  }
}
