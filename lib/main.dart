import 'package:coffee/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee',
      theme: ThemeData(primaryColor: myColor),
      home: HomePage(),
    );
  }
}
