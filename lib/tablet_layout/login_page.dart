import 'package:flutter/material.dart';
import 'package:taskmanager/tablet_layout/otp_verification_page.dart';
import 'package:taskmanager/common/widgets/login_form.dart';
import 'package:taskmanager/common/widgets/side_illustration.dart';

class TabletLoginPage extends StatelessWidget {
  const TabletLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          const Expanded(
            flex: 4,
            child: SideIllustration(),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Center(child: LoginForm(otpPageBuilder: () => TabletOtpPage(),)),
            ),
          ),
        ],
      ),
    );
  }
}
