import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/LVdemo.dart/celebrity_homescree.dart';

import 'screens/LVdemo.dart/celebrity_detail.dart';

void main() {
  runApp(NavigationDemoApp());
}

class NavigationDemoApp extends StatelessWidget {
  const NavigationDemoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        CelebDetails.routeName: (context) => const CelebDetails(),
      },
    );
  }
}
