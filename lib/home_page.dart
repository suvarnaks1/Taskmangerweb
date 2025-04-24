import 'package:flutter/material.dart';
import 'package:taskmanager/desktop_layout/login_page.dart';
import 'package:taskmanager/mobile_layout/login_page.dart';
import 'package:taskmanager/tablet_layout/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 950) {
        return DesktopLoginPage();
      } else if (Constraints.maxWidth > 600) {
        return TabletLoginPage();
      } else {
        return MobileLoginPage();
      }
    });
  }
}
