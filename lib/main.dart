import 'package:flutter/material.dart';
import 'package:taskmanager/desktop_layout/desktop_side_menu.dart';
import 'package:taskmanager/desktop_layout/desktop_customers_page.dart';
import 'package:taskmanager/desktop_layout/login_page.dart';
import 'package:taskmanager/desktop_layout/otp_verification_page.dart';
import 'package:taskmanager/home_page.dart';
import 'package:taskmanager/mobile_layout/login_page.dart';
import 'package:taskmanager/mobile_layout/mobile_customers_page.dart';
import 'package:taskmanager/mobile_layout/mobile_side_menu.dart';
import 'package:taskmanager/mobile_layout/otp_verification_page.dart';

import 'package:taskmanager/tablet_layout/otp_verification_page.dart';
import 'package:taskmanager/tablet_layout/tablet_customer_page.dart';
import 'package:taskmanager/tablet_layout/tablet_side_menu.dart';

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
        '/mobileLogin': (context) => MobileLoginPage(),
        '/tabletLogin': (context) => TabletLoginPage(),
        '/desktopLogin': (context) => DesktopLoginPage(),
        '/desktopOtp': (context) => DesktopOtpPage(),
        '/tabletOtp': (context) => TabletOtpPage(),
        '/mobileOtp': (context) => MobileOtpPage(),
        '/desktopSideMenu': (context) => const DesktopSideMenu(),
        '/tabletSideMenu': (context) => const TabletSideMenu(),
        '/mobileSideMenu': (context) => const MobileSideMenu(),
        '/desktopCustomersPage': (context) => DesktopCustomersPage(),
        '/tabletCustomersPage': (context) => TabletCustomerPage(),
        '/mobileCustomersPage': (context) => MobileCustomersPage(),
      },
    );
  }
}
