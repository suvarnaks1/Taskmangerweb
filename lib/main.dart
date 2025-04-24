import 'package:flutter/material.dart';
import 'package:taskmanager/common/widgets/side_menu.dart';
import 'package:taskmanager/desktop_layout/login_page.dart';
import 'package:taskmanager/desktop_layout/otp_verification_page.dart';
import 'package:taskmanager/home_page.dart';
import 'package:taskmanager/mobile_layout/login_page.dart';
import 'package:taskmanager/mobile_layout/otp_verification_page.dart';
import 'package:taskmanager/tablet_layout/otp_verification_page.dart';

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
      home: SideMenuPage(),
      routes: {
        '/mobileLogin': (context) => MobileLoginPage(),
        '/tabletLogin': (context) => TabletLoginPage(),
        '/desktopLogin': (context) => DesktopLoginPage(),
        '/desktopOtp': (context) => DesktopOtpPage(),
        '/tabletOtp': (context) => TabletOtpPage(),
        '/mobileOtp': (context) => MobileOtpPage(),
        '/SideMenu': (context) => const SideMenuPage(),
      },
    );
  }
}
