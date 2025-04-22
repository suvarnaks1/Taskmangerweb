import 'package:flutter/material.dart';
import 'package:taskmanager/home_page.dart';

import 'tablet_layout/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        
        '/tabletLogin': (context) => TabletLoginPage(), 
      },
    );
  }
}
