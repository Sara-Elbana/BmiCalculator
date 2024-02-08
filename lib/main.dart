//import 'package:flutter/material.dart';
//import 'package:logindesign0/modules/bmi/counterbmi.dart';
//import 'package:logindesign0/modules/login/logindesign0.dart';
//import '../modules/messenger/messenger.dart';
//import '../modules/users/user.dart';
import 'package:flutter/material.dart';

import 'modules/bmi/counterbmi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculator(),
    );
  }
}
