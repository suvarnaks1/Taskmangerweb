import 'package:flutter/material.dart';
import 'package:taskmanager/desktop_layout/otp_verification_page.dart';
import 'package:taskmanager/common/widgets/login_form.dart';
import 'package:taskmanager/common/widgets/side_illustration.dart';

class DesktopLoginPage extends StatelessWidget {
  const DesktopLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            const Expanded(
              flex: 5,
              child: SideIllustration(),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Center(
                    child: LoginForm(
                  otpPageBuilder: () => DesktopOtpPage(),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
