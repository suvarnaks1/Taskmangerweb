import 'package:flutter/material.dart';
import 'package:taskmanager/widgets/login_form.dart';
import 'package:taskmanager/widgets/side_illustration.dart';

class TabletLoginPage extends StatelessWidget {
  const TabletLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: const [
          Expanded(
            flex: 4,
            child: SideIllustration(),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Center(child: LoginForm()),
            ),
          ),
        ],
      ),
    );
  }
}
