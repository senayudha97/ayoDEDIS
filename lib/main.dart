import 'package:flutter/material.dart';
import 'landing.dart';
// import 'form.dart';
// import 'page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'Flutter Demo', home: Home());
  }
}
