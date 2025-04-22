import 'package:flutter/material.dart';
import 'package:taskmanager/desktop_layout/desktop_layout_screen.dart';
import 'package:taskmanager/mobile_layout/mobile_layout_screen.dart';
import 'package:taskmanager/tablet_layout/tablet_layout_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 950) {
        return DesktopLayoutScreen();
      } else if (Constraints.maxWidth > 600) {
        return TabletLayoutScreen();
      } else {
        return MobileLayoutScreen();
      }
    });
  }
}
